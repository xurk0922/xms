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
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 角色表
 * @author xurk
 * @version 1.0
 *
 */
@Entity
@Table(name = "t_role")
public class Role extends BaseEntity {
	/** 角色名称 */
	@JsonProperty
	@Column(nullable = false, length=20, updatable=false)
	private String name;

	/** 描述 */
	@JsonProperty
	@Column(length=100)
	private String description;

	/** 角色对应的管理员账号 */
	@OneToMany(mappedBy = "role", fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	private Set<Admin> admins = new HashSet<Admin>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(Set<Admin> admins) {
		this.admins = admins;
	}
	
	
}
