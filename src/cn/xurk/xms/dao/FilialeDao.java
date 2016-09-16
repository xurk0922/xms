package cn.xurk.xms.dao;

import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

public interface FilialeDao extends BaseDao<Filiale, Long> {
	/** 分页查询 */
	public JqGridPage<Filiale> findPage(JqGridHandler gridHandler);
	
	/** 检查sn */
	public Boolean checkSn(String sn);
}
