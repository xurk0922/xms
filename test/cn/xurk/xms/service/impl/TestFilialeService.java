package cn.xurk.xms.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.service.FilialeService;
import oracle.net.aso.f;

/* 需要通过 @RunWith(SpringJUnit4ClassRunner.class) 来启动 Spring 对测试类的支持 */
@RunWith(SpringJUnit4ClassRunner.class)
/* 需要通过 @ContextConfiguration 注释标签来指定 Spring 配置文件或者配置类的位置 */
@ContextConfiguration(locations = { "classpath:spring-application.xml" }) // Spring配置文件位置
@TransactionConfiguration(transactionManager = "transactionManager") // 我的事务bean
																		// 的id为txManager
/* 需要通过 @Transactional 来启用自动的事务管理 */
@Transactional
public class TestFilialeService {
	
	@Resource(name = "filialeService")
	private FilialeService filialeService;
	
	@Test
	public void testFind() {
		Filiale filiale = filialeService.find(2L);
		
		Set<Admin> admins = filiale.getAdmins();
		for (Admin admin: admins) {
			System.out.println(admin.getName());
		}
	}
	
	
	@Test
	public void testSave() {
		Admin admin = new Admin();
		admin.setName("测试分公司添加");
		admin.setUsername("test3");
		admin.setPassword("test3");
		
		Filiale filiale = new Filiale();
		filiale.setName("测试用");
		filiale.setAddress("测试地址");
		filiale.setName("测试名");
		filiale.setPostcode(123);
		
		filiale.getAdmins().add(admin);
		filialeService.save(filiale);
		
	}
	
	@Test
	public void testUpdate() {
		Filiale filiale = filialeService.find(2L);
		filiale.setRemark("123");
		
		filialeService.update(filiale);
	}
	
	
}
