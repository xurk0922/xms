package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.SupplierDao;
import cn.xurk.xms.entity.Supplier;
import cn.xurk.xms.service.SupplierService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Service("supplierService")
public class SupplierServiceImpl extends BaseServiceImpl<Supplier, Long> implements SupplierService {

	@Resource(name = "supplierDao")
	private SupplierDao supplierDao;
	
	@Resource(name = "supplierDao")
	public void setBaseDao(SupplierDao supplierDao) {
		super.setBaseDao(supplierDao);
	}
	
	@Override
	@Transactional
	public JqGridPage<Supplier> findPage(JqGridHandler gridHandler) {
		return supplierDao.findPage(gridHandler);
	}

	@Override
	@Transactional
	public Boolean checkSn(String sn) {
		
		return supplierDao.checkSn(sn);
	}

}
