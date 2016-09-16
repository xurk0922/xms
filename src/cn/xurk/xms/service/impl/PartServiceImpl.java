package cn.xurk.xms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.PartCategoryDao;
import cn.xurk.xms.dao.PartDao;
import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.service.PartService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Service("partService")
public class PartServiceImpl extends BaseServiceImpl<Part, Long> implements PartService {

	@Resource(name = "partDao")
	private PartDao partDao;
	
	@Resource(name = "partDao")
	public void setBaseDao(PartDao partDao) {
		super.setBaseDao(partDao);
	}
	
	@Override
	@Transactional
	public JqGridPage<Part> findPage(JqGridHandler gridHandler) {
		return partDao.findPage(gridHandler);
	}

	@Override
	@Transactional
	public Boolean checkSn(String sn) {
		
		return partDao.checkSn(sn);
	}

	@Override
	@Transactional
	public List<Part> findByCategory(PartCategory partCategory) {
		return partDao.findByCategory(partCategory);
	}

}
