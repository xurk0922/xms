package cn.xurk.xms.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.validation.groups.Default;

import org.hibernate.search.annotations.DateBridge;
import org.hibernate.search.annotations.DocumentId;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Index;
import org.hibernate.search.annotations.Resolution;
import org.hibernate.search.annotations.Store;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonProperty;

import cn.xurk.xms.listener.EntityListener;

/**
 * entry基类
 * @author scotte
 *
 */
// 设置实体类的json支持
@JsonAutoDetect(fieldVisibility = JsonAutoDetect.Visibility.NONE, getterVisibility = JsonAutoDetect.Visibility.NONE, setterVisibility = JsonAutoDetect.Visibility.NONE, isGetterVisibility = JsonAutoDetect.Visibility.NONE, creatorVisibility = JsonAutoDetect.Visibility.NONE)
// 设置实体监听器，主要做一些预处理
@EntityListeners({ EntityListener.class })
// 标注为基类，不会被映射到数据库表
@MappedSuperclass
public abstract class BaseEntity implements Serializable {
	private static final long serialVersionUID = -67188388306700736L;
	public static final String ID_PROPERTY_NAME = "id";
	public static final String CREATE_DATE_PROPERTY_NAME = "createDate";
	public static final String MODIFY_DATE_PROPERTY_NAME = "modifyDate";
	
	@JsonProperty
	@DocumentId
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@JsonProperty
	@Field(store = Store.YES, index = Index.UN_TOKENIZED)
	@DateBridge(resolution = Resolution.SECOND)
	@Column(name="create_date", nullable = false, updatable = false)
	private Date createDate;
	
	@JsonProperty
	@Field(store = Store.YES, index = Index.UN_TOKENIZED)
	@DateBridge(resolution = Resolution.SECOND)
	@Column(name="modify_date", nullable = false)
	private Date modifyDate;

	public abstract interface Save extends Default {
	}

	public abstract interface Update extends Default {
	}

	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return this.modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public boolean equals(Object obj) {
		if (obj == null)
			return false;
		if (this == obj)
			return true;
		if (!BaseEntity.class.isAssignableFrom(obj.getClass()))
			return false;
		BaseEntity baseEntity = (BaseEntity) obj;
		return getId() != null ? getId().equals(baseEntity.getId()) : false;
	}

	public int hashCode() {
		int i = 17;
		i += (getId() == null ? 0 : getId().hashCode() * 31);
		return i;
	}
}
