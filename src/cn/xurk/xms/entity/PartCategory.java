package cn.xurk.xms.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 配件类别表
 * 
 * @author xurk
 * @version 1.0
 *
 */
@Entity
@Table(name = "t_part_category")
public class PartCategory extends BaseEntity {
	/*** 配件分类货号 */
	@Length(max = 20)
	@Column(nullable = false, unique = true)
	@JsonProperty
	private String sn;

	/** 配件分类名称 */
	@JsonProperty
	@Column(nullable = false, length = 20)
	private String name;

	@OneToMany(mappedBy="supplier", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private Set<Part> parts = new HashSet<Part>();

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Part> getParts() {
		return parts;
	}

	public void setParts(Set<Part> parts) {
		this.parts = parts;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((sn == null) ? 0 : sn.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		PartCategory other = (PartCategory) obj;
		if (sn == null) {
			if (other.sn != null)
				return false;
		} else if (!sn.equals(other.sn))
			return false;
		return true;
	}

}
