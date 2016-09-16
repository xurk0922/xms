package cn.xurk.xms.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.PartDao;
import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Repository("partDao")
public class PartDaoImpl extends BaseDaoImpl<Part, Long> implements PartDao {

	@Override
	public JqGridPage<Part> findPage(JqGridHandler gridHandler) {
		// 每页多少条记录
		int pageSize = gridHandler.getRows();
		// 第几页
		int page = gridHandler.getPage();

		String str = "from Part";

		List<Part> part = this.entityManager.createQuery(str, Part.class)
				.setFlushMode(FlushModeType.COMMIT).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize)
				.getResultList();
		JqGridPage<Part> gridPage = new JqGridPage<Part>();
		gridPage.setContent(part);
		gridPage.setRecords(this.entityManager.createQuery(str, Part.class).setFlushMode(FlushModeType.COMMIT)
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
		CriteriaQuery<Part> criteriaQuery = criteriaBuilder.createQuery(Part.class);
		Root<Part> root = criteriaQuery.from(Part.class);
		
		Predicate condition = criteriaBuilder.conjunction();
		condition = criteriaBuilder.and(criteriaBuilder.equal(root.get("sn"),sn));
		
		criteriaQuery.where(condition);
		
		TypedQuery<Part> typedQuery = super.entityManager.createQuery(criteriaQuery);
		if (typedQuery.getResultList().size() == 0)
			return true;
		
		return false;
	}

	@Override
	public List<Part> findByCategory(PartCategory partCategory) {
		
		String sql = "select part from Part part where part.partCategory=:partCategory";
		
		List<Part> parts = this.entityManager.createQuery(sql, Part.class).setFlushMode(FlushModeType.COMMIT)
				.setParameter("partCategory", partCategory).getResultList();
		
		return parts;
	}

}
