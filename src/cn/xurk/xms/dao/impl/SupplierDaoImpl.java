package cn.xurk.xms.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.SupplierDao;
import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.Supplier;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Repository("supplierDao")
public class SupplierDaoImpl extends BaseDaoImpl<Supplier, Long> implements SupplierDao {

	@Override
	public JqGridPage<Supplier> findPage(JqGridHandler gridHandler) {
		// 每页多少条记录
		int pageSize = gridHandler.getRows();
		// 第几页
		int page = gridHandler.getPage();

		String str = "from Supplier";

		List<Supplier> supplier = this.entityManager.createQuery(str, Supplier.class)
				.setFlushMode(FlushModeType.COMMIT).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize)
				.getResultList();
		JqGridPage<Supplier> gridPage = new JqGridPage<Supplier>();
		gridPage.setContent(supplier);
		gridPage.setRecords(this.entityManager.createQuery(str, Supplier.class).setFlushMode(FlushModeType.COMMIT)
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
		CriteriaQuery<Supplier> criteriaQuery = criteriaBuilder.createQuery(Supplier.class);
		Root<Supplier> root = criteriaQuery.from(Supplier.class);
		
		Predicate condition = criteriaBuilder.conjunction();
		condition = criteriaBuilder.and(criteriaBuilder.equal(root.get("sn"),sn));
		
		criteriaQuery.where(condition);
		
		TypedQuery<Supplier> typedQuery = super.entityManager.createQuery(criteriaQuery);
		if (typedQuery.getResultList().size() == 0)
			return true;
		
		return false;
	}

}
