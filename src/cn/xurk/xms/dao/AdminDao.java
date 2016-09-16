package cn.xurk.xms.dao;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.entity.Part;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;


/**
 * 数据库访问层Dao的接口类，管理员相关基本接口
 * @author scotte
 *
 */
public interface AdminDao extends BaseDao<Admin, Long> {
	/* 根据用户名查找对象*/
	public Admin findByUsername(String username);

	/* 检查sn */
	public boolean checkSn(String sn);
	
	/** 分页查询 */
	public JqGridPage<Admin> findPage(JqGridHandler gridHandler);
}
