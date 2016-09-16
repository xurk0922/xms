package cn.xurk.xms.dao.impl;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.RoleDao;
import cn.xurk.xms.entity.Role;

/**
 * 管理员相关Dao接口BaseDao实现类
 * 
 * @author scotte
 * 
 */
@Repository("roleDao")
public class RoleDaoImpl extends BaseDaoImpl<Role, Long> implements RoleDao {

}
