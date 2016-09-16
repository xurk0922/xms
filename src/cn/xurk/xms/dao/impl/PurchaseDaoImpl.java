package cn.xurk.xms.dao.impl;

import java.util.List;

import javax.persistence.FlushModeType;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import cn.xurk.xms.dao.PurchaseDao;
import cn.xurk.xms.entity.Purchase;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Repository("purchaseDao")
public class PurchaseDaoImpl extends BaseDaoImpl<Purchase, Long> implements PurchaseDao {

	@Override
	public JqGridPage<Purchase> findPage(JqGridHandler gridHandler) {
		
		// 每页多少条记录
		int pageSize = gridHandler.getRows();
		// 第几页
		int page = gridHandler.getPage();
		
		String jpql = "from Purchase";
	
		TypedQuery<Purchase> typedQuery = this.entityManager.createQuery(jpql, Purchase.class)
				.setFlushMode(FlushModeType.COMMIT).setFirstResult((page - 1) * pageSize).setMaxResults(pageSize);
		
		List<Purchase> list = typedQuery.getResultList();
		
	
		JqGridPage<Purchase> gridPage = new JqGridPage<Purchase>();
		gridPage.setContent(list);
		gridPage.setRecords(typedQuery.getResultList().size());
		int total = gridPage.getRecords() % gridHandler.getRows() == 0
				? gridPage.getRecords() / gridHandler.getRows()
				: gridPage.getRecords() / gridHandler.getRows() + 1;
		gridPage.setTotal(total);

		return gridPage;
	}

	@Override
	public List<Purchase> findAll(String start, String end, Long filialeId) {
		String sql = "select * from t_purchase p";
		
		
		if ((start !=null && !start.isEmpty()) && (end != null && !end.isEmpty())) {
			sql += " where Date(p.add_Time) between ? and ?";
			
		}
		
		if (filialeId != null) {
			sql += " and p.filiale_id = ?";
		}
		
		Query query = this.entityManager.createNativeQuery(sql, Purchase.class);
		
		if ((start !=null && !start.isEmpty()) && (end != null && !end.isEmpty())) {
			query.setParameter(1, start).setParameter(2, end);
			if (filialeId != null) {
				query.setParameter(3, filialeId);
			}
		} else {
			if (filialeId != null) {
				query.setParameter(1, filialeId);
			}
			
		}
		
		List<Purchase> purchases = query.getResultList();
		return purchases;
	}
	
	@Override
	public List<Purchase> findAll(String start, String end) {
		String sql = "select * from t_purchase p";
		
		
		if ((start !=null && !start.isEmpty()) && (end != null && !end.isEmpty())) {
			sql += " where Date(p.add_Time) between ? and ?";
			
		}
		
		Query query = this.entityManager.createNativeQuery(sql, Purchase.class);
		
		if ((start !=null && !start.isEmpty()) && (end != null && !end.isEmpty())) {
			query.setParameter(1, start).setParameter(2, end);
			
		} 
		
		List<Purchase> purchases = query.getResultList();
		return purchases;
	}

}
