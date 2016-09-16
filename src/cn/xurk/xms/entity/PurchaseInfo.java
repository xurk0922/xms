package cn.xurk.xms.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * 针对一个配件的采购信息
 * 
 * @author xurk
 * @version 1.0
 *
 */
@Embeddable
public class PurchaseInfo {

	/** 配件信息对应的配件 */
	@OneToOne
	private Part part;
	
	/** 单位换算 */
	@JsonProperty
	@Column(columnDefinition = "Double(10,2) default '0.00'")
	private int conversion;

	/** 数量 */
	@Column(precision = 19, scale = 3)
	private float amount;

	/** 采购单位 */
	@JsonProperty
	private String unit;

	/** 配件规格 */
	@JsonProperty
	private String standard;

	/** 配件编号 */
	@JsonProperty
	private String barCode;

	/** 配件名称 */
	@JsonProperty
	private String name;
	
	/**配件进货价（根据采购情况最终敲定的进价，并非配件档案进货价）*/
	@JsonProperty
	private float purchasePrice;
	
	/**配件零售价*/
	@JsonProperty
	private float salePrice;
	
	/** 配件ID*/
	@JsonProperty
	private Long partId;

	public Part getPart() {
		return part;
	}

	public void setPart(Part part) {
		this.part = part;
	}

	public int getConversion() {
		return conversion;
	}

	public void setConversion(int conversion) {
		this.conversion = conversion;
	}

	public float getAmount() {
		return amount;
	}

	public void setAmount(float amount) {
		this.amount = amount;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getStandard() {
		return standard;
	}

	public void setStandard(String standard) {
		this.standard = standard;
	}

	public String getBarCode() {
		return barCode;
	}

	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Long getPartId() {
		return partId;
	}

	public void setPartId(Long partId) {
		this.partId = partId;
	}
	
	public static List<PurchaseInfo> parseListFromJson(String jsonArrStr) {
		List<PurchaseInfo> purchaseInfos = new ArrayList<PurchaseInfo>();
		try {
			JSONArray jsonArr = JSON.parseArray(jsonArrStr);
			for(int i = 0; i < jsonArr.size(); i++) {
				String jsonStr = jsonArr.getJSONObject(i).toJSONString();
				long partId = jsonArr.getJSONObject(i).getLongValue("id");
				PurchaseInfo info = JSON.parseObject(jsonStr, PurchaseInfo.class);
				info.setPartId(partId);
				purchaseInfos.add(info);
			}
		} catch (Exception e) {
			return new ArrayList<PurchaseInfo>();
		}
		return purchaseInfos;
	}
}
