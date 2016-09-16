package cn.xurk.xms.service;

import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface PartCategoryService extends BaseService<PartCategory, Long> {
	/** 分页查询 */
	public JqGridPage<PartCategory> findPage(JqGridHandler gridHandler);
	
	/** 检查sn */
	public Boolean checkSn(String sn);
}
