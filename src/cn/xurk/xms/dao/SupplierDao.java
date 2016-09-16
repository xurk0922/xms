package cn.xurk.xms.dao;

import cn.xurk.xms.entity.Supplier;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface SupplierDao extends BaseDao<Supplier, Long> {
	/** 分页查询 */
	public JqGridPage<Supplier> findPage(JqGridHandler gridHandler);
	
	/** 检查sn */
	public Boolean checkSn(String sn);
}
