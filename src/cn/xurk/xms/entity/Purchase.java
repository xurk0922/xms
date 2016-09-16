package cn.xurk.xms.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 采购合同表
 * 
 * @author xurk
 * @version 1.0
 *
 */
@Entity
@Table(name="t_purchase")
public class Purchase extends BaseEntity {
	
	/** 合同状态 */
	public enum Status {
		未开始, // 未开始
		执行中, // 执行中
		结束, // 结束
		中止, // 终止
	}

	/** 合同单号 */
	@JsonProperty
	@Column(nullable = false, length = 30)
	private String sn;

	/** 供应商 */
	@ManyToOne
	@JoinColumn(nullable = false, updatable = true, name = "supplier_id")
	private Supplier supplier;

	/** 供应商名称-卖方 */
	@JsonProperty
	private String supplierName;

	/** 分公司 */
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(nullable = false, updatable = true, name = "filiale_id")
	private Filiale filiale;

	/** 分公司名称 -买方 */
	@JsonProperty
	private String filialeName;

	/** 交货日期 */
	@JsonProperty
	@Column(nullable = false)
	private Date deliveryTime;

	/** 制单人员（平台操作员） */
	@ManyToOne
	@JoinColumn(nullable = false)
	@JsonProperty
	private Admin operator;

	/** 制单时间 */
	@JsonProperty
	@Column(nullable = false)
	private Date addTime;

	/** 审核员 */
	@ManyToOne
	@JoinColumn
	@JsonProperty
	private Admin auditor;

	/** 审核日期 */
	@JsonProperty
	@Column
	private Date auditTime;

	/** 订单状态 */
	@JsonProperty
	@Column(nullable = false, length = 10)
	private Status status;

	/** 配件，一份采购订单可以有多个配件 */
	@ElementCollection(fetch=FetchType.EAGER)
	@CollectionTable(name = "t_purchase_part_info")
	private List<PurchaseInfo> purchaseParts = new ArrayList<PurchaseInfo>();

	/** 采购单总金额 */
	@JsonProperty
	@Column
	private float sum;

	/** 备注 */
	@Column(length = 255)
	private String remark;

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public Filiale getFiliale() {
		return filiale;
	}

	public void setFiliale(Filiale filiale) {
		this.filiale = filiale;
	}

	public String getFilialeName() {
		return filialeName;
	}

	public void setFilialeName(String filialeName) {
		this.filialeName = filialeName;
	}

	public Date getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(Date deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

	public Admin getOperator() {
		return operator;
	}

	public void setOperator(Admin operator) {
		this.operator = operator;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Admin getAuditor() {
		return auditor;
	}

	public void setAuditor(Admin auditor) {
		this.auditor = auditor;
	}

	public Date getAuditTime() {
		return auditTime;
	}

	public void setAuditTime(Date auditTime) {
		this.auditTime = auditTime;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getPurchaseInfoJsonString() {
		ObjectMapper mapper = new ObjectMapper();
		try {
			return mapper.writeValueAsString(purchaseParts);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}

	public List<PurchaseInfo> getPurchaseParts() {
		return purchaseParts;
	}

	public void setPurchaseParts(List<PurchaseInfo> purchaseParts) {
		this.purchaseParts = purchaseParts;
	}

	public float getSum() {
		return sum;
	}

	public void setSum(float sum) {
		this.sum = sum;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
