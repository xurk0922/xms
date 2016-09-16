package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.AdminDao;
import cn.xurk.xms.dao.PartCategoryDao;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.service.PartCategoryService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Service("partCategoryService")
public class PartCategoryServiceImpl extends BaseServiceImpl<PartCategory, Long> implements PartCategoryService {

	@Resource(name = "partCategoryDao")
	private PartCategoryDao partCategoryDao;
	
	@Resource(name = "partCategoryDao")
	public void setBaseDao(PartCategoryDao partCategoryDao) {
		super.setBaseDao(partCategoryDao);
	}
	
	@Override
	@Transactional
	public JqGridPage<PartCategory> findPage(JqGridHandler gridHandler) {
		return partCategoryDao.findPage(gridHandler);
	}

	@Override
	@Transactional
	public Boolean checkSn(String sn) {
		
		return partCategoryDao.checkSn(sn);
	}

}
