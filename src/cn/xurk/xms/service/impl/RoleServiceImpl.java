package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.xurk.xms.dao.RoleDao;
import cn.xurk.xms.entity.Role;
import cn.xurk.xms.service.RoleService;

/**
 * 角色服务的实现类
 * 
 * @author scotte
 * 
 * @param <T>
 * @param <ID>
 */
@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role, Long> implements RoleService {
	
	@Resource(name = "roleDao")
	private RoleDao roleDao;
	
	@Resource(name = "roleDao")
	public void setBaseDao(RoleDao roleDao) {
		super.setBaseDao(roleDao);
	}

	
}
