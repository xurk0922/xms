package cn.xurk.xms.service.impl;

import java.util.List;

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
import cn.xurk.xms.service.PartService;
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
public class TestPart {

	@Resource(name = "partService")
	private PartService partService;
	
	@Resource(name="partCategoryService")
	private PartCategoryService partCategoryService;

	@Test
	public void testFind() {
		Part part = partService.find(5L);
		System.out.println(part.getName());
		System.out.println(part.getPartCategory().getName());
	}

	@Test
	public void testFindPage() {

		JqGridHandler gridHander = new JqGridHandler();
		gridHander.setRows(10);
		gridHander.setPage(1);

		JqGridPage<Part> gridPage = partService.findPage(gridHander);

		if (gridPage == null) {
			System.out.println("Error");
		} else {
			System.out.println(gridPage.getContent().get(0).getPartCategory().getName());
			System.out.println(gridPage.getRecords());
			System.out.println(gridPage.getTotal());
		}
	}

	@Test
	public void testSave() {
		Part part = new Part();
		part.setSn("123");
		part.setName("456");
		
		partService.save(part);
	}
	
	@Test
	public void testFindByCategory() {
		PartCategory partCategory = partCategoryService.find(1L);
		List<Part> parts = partService.findByCategory(partCategory);
		for (Part part: parts) {
			System.out.println(part.getName());
		}
	}

}
