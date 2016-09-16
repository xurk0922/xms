package cn.xurk.xms.service;

import java.io.Serializable;
import java.util.List;

/**
 * 通用业务接口接口类
 * @author scotte
 *
 */
public interface BaseService<T, ID extends Serializable> {

	/**
	 * 根据ID查找对象
	 * 
	 * @param id
	 * @return
	 */
	public abstract T find(ID id);

	/**
	 * 查找所有的对象
	 * 
	 * @return
	 */
	public abstract List<T> findAll();

	/**
	 * 保存对象
	 * 
	 * @param t
	 */
	public abstract void save(T t);
	
	/**
	 * 更新对象并返回更新后对象
	 * @param t
	 * @return
	 */
	public abstract T update(T t);
	
	/**
	 * 根据id获取对象
	 * 
	 * @param id
	 */
	public abstract void delete(ID id);
	
	/**
	 * 根据对象进行删除
	 * @param t
	 */
	public abstract void delete(T t);
}
