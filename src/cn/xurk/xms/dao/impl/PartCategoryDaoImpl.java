package cn.xurk.xms.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.PartCategoryDao;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Repository("partCategoryDao")
public class PartCategoryDaoImpl extends BaseDaoImpl<PartCategory, Long> implements PartCategoryDao {

	@Override
	public JqGridPage<PartCategory> findPage(JqGridHandler gridHandler) {
		
		// 每页多少条记录
		int pageSize = gridHandler.getRows();
		// 第几页
		int page = gridHandler.getPage();

		String str = "from PartCategory";

		List<PartCategory> partCategory = this.entityManager.createQuery(str, PartCategory.class)
				.setFlushMode(FlushModeType.COMMIT).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize)
				.getResultList();
		JqGridPage<PartCategory> gridPage = new JqGridPage<PartCategory>();
		gridPage.setContent(partCategory);
		gridPage.setRecords(this.entityManager.createQuery(str, PartCategory.class).setFlushMode(FlushModeType.COMMIT)
				.getResultList().size());
		int total = gridPage.getRecords() % gridHandler.getRows() == 0
				? gridPage.getRecords() / gridHandler.getRows()
				: gridPage.getRecords() / gridHandler.getRows() + 1;
		gridPage.setTotal(total);

		return gridPage;
	}

	@Override
	public Boolean checkSn(String sn) {
		
		
		CriteriaBuilder criteriaBuilder = super.entityManager.getCriteriaBuilder();
		CriteriaQuery<PartCategory> criteriaQuery = criteriaBuilder.createQuery(PartCategory.class);
		Root<PartCategory> root = criteriaQuery.from(PartCategory.class);
		
		Predicate condition = criteriaBuilder.conjunction();
		condition = criteriaBuilder.and(criteriaBuilder.equal(root.get("sn"),sn));
		
		criteriaQuery.where(condition);
		
		TypedQuery<PartCategory> typedQuery = super.entityManager.createQuery(criteriaQuery);
		if (typedQuery.getResultList().size() == 0)
			return true;
		
		return false;
	}

}
