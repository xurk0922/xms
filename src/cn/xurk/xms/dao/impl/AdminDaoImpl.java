package cn.xurk.xms.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.AdminDao;
import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

/**
 * 管理员相关Dao接口BaseDao实现类
 * 
 * @author scotte
 * 
 */
@Repository("adminDao")
public class AdminDaoImpl extends BaseDaoImpl<Admin, Long> implements AdminDao {

	@Override
	public Admin findByUsername(String username) {
		CriteriaBuilder criteriaBuilder = super.entityManager.getCriteriaBuilder();
		CriteriaQuery<Admin> criteriaQuery = criteriaBuilder.createQuery(Admin.class);
		Root<Admin> root = criteriaQuery.from(Admin.class);
		
		Predicate condition = criteriaBuilder.conjunction();
		condition = criteriaBuilder.and(criteriaBuilder.equal(root.get("username"),username));
		criteriaQuery.where(condition);
		
		TypedQuery<Admin> typedQuery = super.entityManager.createQuery(criteriaQuery);
		return typedQuery.getResultList().get(0);
		
		
	}

	@Override
	public boolean checkSn(String sn) {
		
		
		CriteriaBuilder criteriaBuilder = super.entityManager.getCriteriaBuilder();
		CriteriaQuery<Admin> criteriaQuery = criteriaBuilder.createQuery(Admin.class);
		Root<Admin> root = criteriaQuery.from(Admin.class);
		
		Predicate condition = criteriaBuilder.conjunction();
		condition = criteriaBuilder.and(criteriaBuilder.equal(root.get("sn"),sn));
		
		criteriaQuery.where(condition);
		
		TypedQuery<Admin> typedQuery = super.entityManager.createQuery(criteriaQuery);
		if (typedQuery.getResultList().size() == 0)
			return true;
		
		return false;
	}

	@Override
	public JqGridPage<Admin> findPage(JqGridHandler gridHandler) {
		// 每页多少条记录
				int pageSize = gridHandler.getRows();
				// 第几页
				int page = gridHandler.getPage();

				String str = "from Admin";

				List<Admin> admin = this.entityManager.createQuery(str, Admin.class)
						.setFlushMode(FlushModeType.COMMIT).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize)
						.getResultList();
				JqGridPage<Admin> gridPage = new JqGridPage<Admin>();
				gridPage.setContent(admin);
				gridPage.setRecords(this.entityManager.createQuery(str, Admin.class).setFlushMode(FlushModeType.COMMIT)
						.getResultList().size());
				int total = gridPage.getRecords() % gridHandler.getRows() == 0
						? gridPage.getRecords() / gridHandler.getRows()
						: gridPage.getRecords() / gridHandler.getRows() + 1;
				gridPage.setTotal(total);

				return gridPage;
	}
	
	
}
