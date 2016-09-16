package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.AdminDao;
import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.service.AdminService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

/**
 * 管理员相关服务的实现类
 * 
 * @author scotte
 * 
 * @param <T>
 * @param <ID>
 */
@Service("adminService")
public class AdminServiceImpl extends BaseServiceImpl<Admin, Long> implements AdminService {
	
	@Resource(name = "adminDao")
	private AdminDao adminDao;
	
	@Resource(name = "adminDao")
	public void setBaseDao(AdminDao adminDao) {
		super.setBaseDao(adminDao);
	}

	@Override
	@Transactional
	public Admin findByUsername(String username) {
		return adminDao.findByUsername(username);
	}

	@Override
	@Transactional
	public boolean checkSn(String sn) {
	
		return adminDao.checkSn(sn);
	}

	@Override
	@Transactional
	public JqGridPage<Admin> findPage(JqGridHandler gridHandler) {
		return adminDao.findPage(gridHandler);
	}
	
	
}
