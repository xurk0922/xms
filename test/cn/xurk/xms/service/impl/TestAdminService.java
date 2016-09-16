package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.dao.AdminDao;
import cn.xurk.xms.dao.PartCategoryDao;
import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.service.AdminService;
import cn.xurk.xms.service.PartCategoryService;

/**
 * BaseDao测试类
 * 
 * @author xurk
 * @version 1.0
 *
 */
/* 需要通过 @RunWith(SpringJUnit4ClassRunner.class) 来启动 Spring 对测试类的支持 */
@RunWith(SpringJUnit4ClassRunner.class)
/* 需要通过 @ContextConfiguration 注释标签来指定 Spring 配置文件或者配置类的位置 */
@ContextConfiguration(locations = { "classpath:spring-application.xml" }) // Spring配置文件位置
@TransactionConfiguration(transactionManager = "transactionManager") // 我的事务bean
																		// 的id为txManager
/* 需要通过 @Transactional 来启用自动的事务管理 */
@Transactional
public class TestAdminService {

	@Resource(name = "adminService")
	private AdminService adminService;
	
	@Test
	public void testPersist() {

		Admin admin = new Admin();
		admin.setUsername("qiqiq");
		admin.setPassword("qiqiq");
		admin.setName("qiqiq");
		admin.setSn("qiqiq");

		adminService.save(admin);
	}
	
	@Test
	public void testFind() {
		System.out.println(adminService.find(1L).getUsername());
	}
	
	@Test
	public void testFindByUsername() {
		System.out.println(adminService.findByUsername("admin").getRole().getName());
		
	}
}
