package cn.xurk.xms.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 管理员表
 * @author xurk
 * @version 1.0
 */
@Entity
@Table(name="t_admin")
public class Admin extends BaseEntity {
	
	
	/** 编号 */
	@JsonProperty
	@Column(nullable = false, unique = true, length=20)
	private String sn;
	
	/** 管理员账号 */
	@JsonProperty
	@Column(nullable = false, updatable = false, unique = true, length=20)
	private String username;
	
	/** 管理员密码 */
	@Column(nullable = false, length=20)
	@JsonProperty
	private String password;
	
	/** 名字 */
	@JsonProperty
	@Column(length=20)
	private String name;
	
	/** 账号所属分公司 */
	@JsonProperty
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="filiale_id")
	private Filiale filiale;
	
	/** 对应角色 */
	@JsonProperty
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="role_id")
	private Role role;
	
	/** 备注 */
	@JsonProperty
	@Column(length=255)
	public String remark;

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Filiale getFiliale() {
		return filiale;
	}

	public void setFiliale(Filiale filiale) {
		this.filiale = filiale;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
