package cn.xurk.xms.service;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;
/**
 * 管理员相关业务接口接口类
 * @author Administrator
 *
 */
public interface AdminService extends BaseService<Admin, Long> {
	
	/* 根据用户名查询对象*/
	public Admin findByUsername(String username);

	/**检查sn*/
	public boolean checkSn(String sn);
	
	/** 分页查询 */
	public JqGridPage<Admin> findPage(JqGridHandler gridHandler);
	
	
}
