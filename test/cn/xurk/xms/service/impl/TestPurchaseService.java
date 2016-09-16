package cn.xurk.xms.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.Purchase;
import cn.xurk.xms.entity.PurchaseInfo;
import cn.xurk.xms.service.PurchaseService;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;

/* 需要通过 @RunWith(SpringJUnit4ClassRunner.class) 来启动 Spring 对测试类的支持 */
@RunWith(SpringJUnit4ClassRunner.class)
/* 需要通过 @ContextConfiguration 注释标签来指定 Spring 配置文件或者配置类的位置 */
@ContextConfiguration(locations = { "classpath:spring-application.xml" }) // Spring配置文件位置
@TransactionConfiguration(transactionManager = "transactionManager") // 我的事务bean
																		// 的id为txManager
/* 需要通过 @Transactional 来启用自动的事务管理 */
@Transactional
public class TestPurchaseService {
	
	@Resource(name = "purchaseService")
	private PurchaseService purchaseService;
	
	@Test
	public void createSn() {
		Date date = new Date();
		System.out.println(date.getTime());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		System.out.println(sdf.format(date)+"-"+date.getTime());
	}
	
	@Test
	public void testFind() {
		List<PurchaseInfo> infos =  purchaseService.find(1L).getPurchaseParts();
		for (PurchaseInfo info : infos) {
			System.out.println(info.getName());
		}
	}
	
	@Test
	public void report() throws JsonProcessingException {
		Map<String, Float> map = new HashMap<String, Float>();
		List<Purchase> purchases = purchaseService.findAll("", "");
		ObjectMapper mapper = new ObjectMapper();
		
		// 遍历，得到每个合同的明细
		for (Purchase purchase: purchases) {
			List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
			// 遍历明细，得到每个配件
			for (PurchaseInfo purchaseInfo: purchaseInfos) {
				// 得到每个配件
				String Json = mapper.writeValueAsString(purchaseInfo.getPart().getPartCategory());
				// 初始化map集合
				map.put(Json, 0F);
			}
		}
		
		for (Purchase purchase: purchases) {
			List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
			// 遍历明细，得到每个配件
			for (PurchaseInfo purchaseInfo: purchaseInfos) {
				// 得到每个配件
				String Json = mapper.writeValueAsString(purchaseInfo.getPart().getPartCategory());
				map.put(Json, map.get(Json) + purchaseInfo.getAmount());
				//System.out.println(Json);
			}
		}
		
		System.out.println(map);
	}
	
	
}
