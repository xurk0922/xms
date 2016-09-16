package cn.xurk.xms.service;

import java.util.List;

import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface PartService extends BaseService<Part, Long> {
	/** 分页查询 */
	public JqGridPage<Part> findPage(JqGridHandler gridHandler);
	
	/** 检查sn */
	public Boolean checkSn(String sn);
	
	/** 根据分类查询*/
	public List<Part> findByCategory(PartCategory partCategory);
}
