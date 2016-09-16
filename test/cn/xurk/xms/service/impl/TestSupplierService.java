package cn.xurk.xms.service.impl;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import cn.xurk.xms.service.SupplierService;

/* 需要通过 @RunWith(SpringJUnit4ClassRunner.class) 来启动 Spring 对测试类的支持 */
@RunWith(SpringJUnit4ClassRunner.class)
/* 需要通过 @ContextConfiguration 注释标签来指定 Spring 配置文件或者配置类的位置 */
@ContextConfiguration(locations = { "classpath:spring-application.xml" }) // Spring配置文件位置
@TransactionConfiguration(transactionManager = "transactionManager") // 我的事务bean
																		// 的id为txManager
/* 需要通过 @Transactional 来启用自动的事务管理 */
@Transactional
public class TestSupplierService {
	
	@Resource(name= "supplicerSerivce")
	SupplierService supplierService;
	
}
