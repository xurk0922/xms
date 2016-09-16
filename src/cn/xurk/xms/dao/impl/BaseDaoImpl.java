package cn.xurk.xms.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.util.Assert;

import cn.xurk.xms.dao.BaseDao;

/**
 * 通过Dao接口BaseDao实现类
 * 
 * @author scotte
 * 
 */
// 数据库访问层Dao标识
@SuppressWarnings({ "unchecked", "rawtypes" })
public abstract class BaseDaoImpl<T, ID extends Serializable> implements BaseDao<T, ID> {

	/**
	 * dao类型
	 */
	private Class<T> daoType;

	// 注入实体管理器
	@PersistenceContext
	protected EntityManager entityManager;

	public BaseDaoImpl() {
		Type type = getClass().getGenericSuperclass();
		Type[] actualTypes = ((ParameterizedType) type).getActualTypeArguments();
		this.daoType = (Class<T>) actualTypes[0];
	}

	@Override
	public void persist(T entity) {
		entityManager.persist(entity);
	}

	@Override
	public T find(ID id) {
		if (id != null)
			return this.entityManager.find(this.daoType, id);
		return null;
	}

	@Override
	public List<T> getAll() {
		CriteriaBuilder cb = entityManager.getCriteriaBuilder();
		CriteriaQuery<T> cq = cb.createQuery(daoType);
		Root<T> emp = cq.from(daoType);
		cq.select(emp);
		TypedQuery<T> query = entityManager.createQuery(cq);
		List<T> resultList = query.getResultList();
		return resultList;
	}

	@Override
	public T merge(T entity) {
		Assert.notNull(entity);
		return this.entityManager.merge(entity);
	}

	@Override
	public void remove(T entity) {
		if (entity != null)
			this.entityManager.remove(entity);
	}

	@Override
	public void refresh(T entity) {
		Assert.notNull(entity);
		this.entityManager.refresh(entity);
	}

	@Override
	public ID getIdentifier(T entity) {
		Assert.notNull(entity);
		return (ID) this.entityManager.getEntityManagerFactory().getPersistenceUnitUtil().getIdentifier(entity);
	}

	@Override
	public void flush() {
		this.entityManager.flush();
	}

}
