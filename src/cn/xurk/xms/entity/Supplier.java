package cn.xurk.xms.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Index;
import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 供应商表
 * @author xurk
 * @version 1.0
 *
 */
@Entity
@Table(name = "t_supplier")
public class Supplier extends BaseEntity {

	/** 供应商编码四位 */
	@JsonProperty
	@Column(nullable = false, length = 8, unique = true)
	private String sn;

	/** 供应商名称 */
	@JsonProperty
	@Index(name = "name")
	@Column(nullable = false, length = 100)
	private String name;

	/** 法人 */
	@JsonProperty
	@Column(length = 40)
	private String legalPerson;

	/** 电话 */
	@JsonProperty
	@Column(length = 20)
	private String tel;

	/** 邮编 */
	@JsonProperty
	@Column(length = 6)
	private String postcode;

	/** 地址 */
	@JsonProperty
	@Column(length = 100)
	private String address;

	/** 生产的配件 */
	@OneToMany(mappedBy="supplier", fetch=FetchType.LAZY)
	private Set<Part> parts = new HashSet<Part>();

	/** 备注 */
	@Column(length = 255)
	private String remark;

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

	public String getLegalPerson() {
		return legalPerson;
	}

	public void setLegalPerson(String legalPerson) {
		this.legalPerson = legalPerson;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Set<Part> getParts() {
		return parts;
	}

	public void setParts(Set<Part> parts) {
		this.parts = parts;
	}

}
