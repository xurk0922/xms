package cn.xurk.xms.service;

import java.util.List;

import cn.xurk.xms.entity.Purchase;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface PurchaseService extends BaseService<Purchase, Long> {
	/** 分页查询 */
	public JqGridPage<Purchase> findPage(JqGridHandler gridHandler);
	
	/** 查询,带时间，带分公司 */
	public List<Purchase> findAll(String start, String end, Long filialeId);
	
	/** 查询,带时间 */
	public List<Purchase> findAll(String start, String end);
}
