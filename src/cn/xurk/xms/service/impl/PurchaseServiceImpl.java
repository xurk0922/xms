package cn.xurk.xms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.PurchaseDao;
import cn.xurk.xms.entity.Purchase;
import cn.xurk.xms.service.PurchaseService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Service("purchaseService")
public class PurchaseServiceImpl extends BaseServiceImpl<Purchase, Long> implements PurchaseService {

	@Resource(name = "purchaseDao")
	private PurchaseDao purchaseDao;
	
	@Resource(name = "purchaseDao")
	public void setBaseDao(PurchaseDao purchaseDao) {
		super.setBaseDao(purchaseDao);
	}
	
	@Override
	@Transactional
	public JqGridPage<Purchase> findPage(JqGridHandler gridHandler) {
		return purchaseDao.findPage(gridHandler);
	}

	@Override
	@Transactional
	public List<Purchase> findAll(String start, String end, Long filialeId) {
		return purchaseDao.findAll( start, end, filialeId);
	}
	
	@Override
	@Transactional
	public List<Purchase> findAll(String start, String end) {
		return purchaseDao.findAll( start, end);
	}
}
