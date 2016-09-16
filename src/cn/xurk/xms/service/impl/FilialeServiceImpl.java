package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.FilialeDao;
import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.service.FilialeService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Service("filialeService")
public class FilialeServiceImpl extends BaseServiceImpl<Filiale, Long> implements FilialeService {

	@Resource(name = "filialeDao")
	private FilialeDao filialeDao;
	
	@Resource(name = "filialeDao")
	public void setBaseDao(FilialeDao filialeDao) {
		super.setBaseDao(filialeDao);
	}
	
	@Override
	@Transactional
	public JqGridPage<Filiale> findPage(JqGridHandler gridHandler) {
		return filialeDao.findPage(gridHandler);
	}

	@Override
	@Transactional
	public Boolean checkSn(String sn) {
		
		return filialeDao.checkSn(sn);
	}

}
