package cn.xurk.xms.entity;




import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 配件表
 * @author xurk
 * @version 1.0
 *
 */
@Entity
@Table(name = "t_part")
public class Part extends BaseEntity {
	

	/*** 配件货号 */
	@Length(max = 20)
	@Column(nullable = false, unique = true)
	@JsonProperty
	private String sn;

	/** 配件名称 */
	@JsonProperty
	@Column(nullable = false, length = 20)
	private String name;

	/** 配件规格 */
	@JsonProperty
	@Column(length = 20)
	private String standard;
	
	/** 配件进货价 */
	@JsonProperty
	@Column
	private float purchasePrice;

	/** 配件销售价 */
	@JsonProperty
	@Column
	private float salePrice;

	/** 配件批发价 */
	@JsonProperty
	@Column
	private float wholesalePrice;

	/** 配件种类 */
	@JsonProperty
	@ManyToOne
	@JoinColumn(name = "partCategory_id")
	private PartCategory partCategory;
	
	

	/** 供应商种类 */
	@JsonProperty
	@ManyToOne
	@JoinColumn(name = "supplier_id")
	private Supplier supplier;

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

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public float getPurchasePrice() {
		return purchasePrice;
	}

	public void setPurchasePrice(float purchasePrice) {
		this.purchasePrice = purchasePrice;
	}

	public float getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(float salePrice) {
		this.salePrice = salePrice;
	}

	public float getWholesalePrice() {
		return wholesalePrice;
	}

	public void setWholesalePrice(float wholesalePrice) {
		this.wholesalePrice = wholesalePrice;
	}

	public PartCategory getPartCategory() {
		return partCategory;
	}

	public void setPartCategory(PartCategory partCategory) {
		this.partCategory = partCategory;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((sn == null) ? 0 : sn.hashCode());
		return result;
	}

	/** 重写equals，sn相同就是同一个配件 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Part other = (Part) obj;
		if (sn == null) {
			if (other.sn != null)
				return false;
		} else if (!sn.equals(other.sn))
			return false;
		return true;
	}
	
	

}
