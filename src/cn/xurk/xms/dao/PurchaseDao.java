package cn.xurk.xms.dao;

import java.util.List;

import cn.xurk.xms.entity.Purchase;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface PurchaseDao extends BaseDao<Purchase, Long> {
	/** 分页查询 */
	public JqGridPage<Purchase> findPage(JqGridHandler gridHandler);
	
	/** 分页查询,带时间，带分公司 */
	public List<Purchase> findAll(String start, String end, Long filialeId);

	public List<Purchase> findAll(String start, String end);
	
}
