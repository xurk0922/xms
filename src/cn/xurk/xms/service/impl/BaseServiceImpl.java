package cn.xurk.xms.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.BaseDao;
import cn.xurk.xms.service.BaseService;

/**
 * 基本服务的实现类
 * 
 * @author scotte
 * 
 * @param <T>
 * @param <ID>
 */
@Transactional
public class BaseServiceImpl <T, ID extends Serializable> implements BaseService<T, ID> {

	// dao基类
	private BaseDao<T, ID> baseDao;
	
	public void setBaseDao(BaseDao<T, ID> baseDao) {
		this.baseDao = baseDao;
	}
	
	@Transactional
	public void save(T entity) {
		this.baseDao.persist(entity);
	}

	@Override
	@Transactional(readOnly = true)
	public T find(ID id) {
		return this.baseDao.find(id);
	}

	@Transactional(readOnly = true)
	public List<T> findAll() {
		return this.baseDao.getAll();
	}

	@Transactional
	public T update(T entity) {
		return this.baseDao.merge(entity);
	}
	
	@Transactional
	public void delete(ID id) {
		delete(this.baseDao.find(id));
	}

	@Transactional
	public void delete(T entity) {
		this.baseDao.remove(entity);
	}


}
