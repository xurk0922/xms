package cn.xurk.xms.dao;

import java.io.Serializable;
import java.util.List;

/**
 * 数据库访问层Dao的接口类，实现基本接口
 * @author scotte
 *
 */
public interface BaseDao <T, ID extends Serializable>{
	
	/**
     * 持久化实体
     * @param entity
     */
    public void persist(T entity);
   

    /**
     * 根据主键查询实体
     * @param id     主键
     * @return
     */
    public T find(ID id);
    
    /**
     * 获取所有的实体
     * @return
     */
    public List<T> getAll();
    
    /**
	 * 合并对象
	 * @param t
	 * @return
	 */
	public abstract T merge(T t);

	/**
	 * 删除对象
	 * @param t
	 */
	public abstract void remove(T t);

	/**
	 * 刷新对象
	 * @param t
	 */
	public abstract void refresh(T t);

	/**
	 * 获取ID
	 * @param t
	 * @return
	 */
	public abstract ID getIdentifier(T t);
	
	/**
	 * 刷新全部持久化对象到结果
	 */
	public abstract void flush();

	
}
