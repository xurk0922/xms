package cn.xurk.xms.service.impl;

import java.math.BigDecimal;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.service.PartCategoryService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

/* 需要通过 @RunWith(SpringJUnit4ClassRunner.class) 来启动 Spring 对测试类的支持 */
@RunWith(SpringJUnit4ClassRunner.class)
/* 需要通过 @ContextConfiguration 注释标签来指定 Spring 配置文件或者配置类的位置 */
@ContextConfiguration(locations = { "classpath:spring-application.xml" }) // Spring配置文件位置
@TransactionConfiguration(transactionManager = "transactionManager") // 我的事务bean
																		// 的id为txManager
/* 需要通过 @Transactional 来启用自动的事务管理 */
@Transactional
public class TestPartCategoryService {
	@Resource(name="partCategoryService")
	private PartCategoryService partCategoryService;
	
	
	@Test
	public void testFindPage() {
		
		JqGridHandler gridHander = new JqGridHandler();
		gridHander.setRows(10);
		gridHander.setPage(1);
		
		JqGridPage<PartCategory> gridPage = partCategoryService.findPage(gridHander);
		
		if (gridPage == null) {
			System.out.println("Error");
		}
		else {
			System.out.println(gridPage.getContent());
			System.out.println(gridPage.getRecords());
			System.out.println(gridPage.getTotal());
		}
	}
	
	@Test
	public void testCheckSn() {
		System.out.println(partCategoryService.checkSn("01"));
	}
	
}
