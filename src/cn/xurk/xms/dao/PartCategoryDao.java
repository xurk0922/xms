package cn.xurk.xms.dao;

import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface PartCategoryDao extends BaseDao<PartCategory, Long> {
	/** 分页查询 */
	public JqGridPage<PartCategory> findPage(JqGridHandler gridHandler);
	
	/** 检查sn */
	public Boolean checkSn(String sn);
}
