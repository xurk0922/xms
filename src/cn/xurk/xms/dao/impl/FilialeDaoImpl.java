package cn.xurk.xms.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.FilialeDao;
import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Repository("filialeDao")
public class FilialeDaoImpl extends BaseDaoImpl<Filiale, Long> implements FilialeDao {

	@Override
	public JqGridPage<Filiale> findPage(JqGridHandler gridHandler) {
		// 每页多少条记录
		int pageSize = gridHandler.getRows();
		// 第几页
		int page = gridHandler.getPage();

		String str = "from Filiale";

		List<Filiale> filiale = this.entityManager.createQuery(str, Filiale.class)
				.setFlushMode(FlushModeType.COMMIT).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize)
				.getResultList();
		JqGridPage<Filiale> gridPage = new JqGridPage<Filiale>();
		gridPage.setContent(filiale);
		gridPage.setRecords(this.entityManager.createQuery(str, Filiale.class).setFlushMode(FlushModeType.COMMIT)
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
		CriteriaQuery<Filiale> criteriaQuery = criteriaBuilder.createQuery(Filiale.class);
		Root<Filiale> root = criteriaQuery.from(Filiale.class);
		
		Predicate condition = criteriaBuilder.conjunction();
		condition = criteriaBuilder.and(criteriaBuilder.equal(root.get("sn"),sn));
		
		criteriaQuery.where(condition);
		
		TypedQuery<Filiale> typedQuery = super.entityManager.createQuery(criteriaQuery);
		if (typedQuery.getResultList().size() == 0)
			return true;
		
		return false;
	}

}
