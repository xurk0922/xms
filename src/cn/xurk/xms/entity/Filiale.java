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
 * 分公司表
 * @author xurk
 * @version 1.0
 *
 */
@Entity
@Table(name = "t_filiale")
public class Filiale extends BaseEntity {

	/** 编号 */
	@JsonProperty
	@Column(nullable = false, unique = true, length = 20)
	private String sn;

	/** 名字 */
	@JsonProperty
	@Length(max = 40)
	private String name;

	/** 地址 */
	@JsonProperty
	@Column(nullable = false, length = 60)
	private String address;

	/** 邮编 */
	@JsonProperty
	@Column(length = 8)
	private int postcode;
	
	/** 电话 */
	@JsonProperty
	@Column(length = 20)
	private String tel;


	/** 备注 */
	@Column(length = 255)
	private String remark;

	/** 该分公司下的管理员 */
	@OneToMany(mappedBy="filiale")
	private Set<Admin> admins = new HashSet<Admin>();

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPostcode() {
		return postcode;
	}

	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set<Admin> getAdmins() {
		return admins;
	}

	public void setAdmins(Set<Admin> admins) {
		this.admins = admins;
	}
	
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

}
