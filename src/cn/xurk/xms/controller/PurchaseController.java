package cn.xurk.xms.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.Purchase;
import cn.xurk.xms.entity.Purchase.Status;
import cn.xurk.xms.entity.PurchaseInfo;
import cn.xurk.xms.entity.Supplier;
import cn.xurk.xms.service.AdminService;
import cn.xurk.xms.service.FilialeService;
import cn.xurk.xms.service.PartCategoryService;
import cn.xurk.xms.service.PartService;
import cn.xurk.xms.service.PurchaseService;
import cn.xurk.xms.service.SupplierService;
import cn.xurk.xms.utils.GetAdmin;

@Controller
@RequestMapping("/admin/purchase")
public class PurchaseController {

	@Resource(name = "partCategoryService")
	private PartCategoryService partCategoryService;

	@Resource(name = "partService")
	private PartService partService;

	@Resource(name = "adminService")
	private AdminService adminService;

	@Resource(name = "filialeService")
	private FilialeService filialeService;

	@Resource(name = "supplierService")
	private SupplierService supplierService;

	@Resource(name = "purchaseService")
	private PurchaseService purchaseService;

	/** 合同添加页面 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model) {

		// 添加配件分类
		List<Part> parts = partService.findAll();
		model.addAttribute("parts", parts);

		// 添加供应商
		List<Supplier> suppliers = supplierService.findAll();
		model.addAttribute("suppliers", suppliers);

		// 添加分公司
		List<Filiale> filiales = filialeService.findAll();
		model.addAttribute("filiales", filiales);

		// 添加审核员
		List<Admin> admins = adminService.findAll();
		model.addAttribute("admins", admins);
		
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		
		return "purchase/add";
	}

	/** 获得配件 */
	@RequestMapping(value = "/getPartJson", produces = "plain/text; charset=UTF-8")
	@ResponseBody
	public String getPart(Long partId) {
		Part part = partService.find(partId);
		ObjectMapper mapper = new ObjectMapper();
		String json = "";
		try {
			json = mapper.writeValueAsString(part);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	/**
	 * 保存合同
	 * 
	 * @param addTime
	 *            添加时间
	 * @param deliveryTime
	 *            到货时间
	 * @param filialeId
	 *            分公司id
	 * @param supplierId
	 *            供应商id
	 * @param operatorId
	 *            操作员id
	 * @param purchaseInfos
	 *            合同明细
	 * @return
	 */
	@RequestMapping(value = "/save")
	public String save(String addTime, String deliveryTime, Long filialeId, Long supplierId, Long operatorId,
			String purchaseInfos) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Purchase purchase = new Purchase();
		try {
			purchase.setAddTime(sdf.parse(addTime));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {

			purchase.setDeliveryTime(sdf.parse(deliveryTime));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 将明细(json)转为对象
		List<PurchaseInfo> purchaseInfo = PurchaseInfo.parseListFromJson(purchaseInfos);
		// 为合同设置明细
		purchase.setPurchaseParts(purchaseInfo);
		float sum = 0;
		for (PurchaseInfo info : purchaseInfo) {
			Part part = this.partService.find(info.getPartId());
			if (part == null) {
				continue;
			}
			info.setBarCode(part.getSn());
			info.setPart(this.partService.find(info.getPartId()));
			sum += info.getConversion() * info.getAmount() * info.getPurchasePrice();
		}
		Filiale filiale = this.filialeService.find(filialeId);
		Supplier supplier = this.supplierService.find(supplierId);

		purchase.setFiliale(filiale);
		purchase.setFilialeName(filiale.getName());
		purchase.setSupplier(supplier);
		purchase.setSupplierName(supplier.getName());
		purchase.setOperator(adminService.find(operatorId));
		purchase.setStatus(Status.未开始);
		purchase.setSum(sum);

		sdf = new SimpleDateFormat("yyyyMMdd");

		purchase.setSn("CG-" + sdf.format(date) + "-" + date.getTime());

		purchaseService.save(purchase);

		return "purchase/list";
	}

	/** 合同列表页面 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ModelMap model) {
		Subject subject = SecurityUtils.getSubject();
		// 得到一个身份集合
		PrincipalCollection principalCollection = subject.getPrincipals();
		model.addAttribute("adminName", principalCollection.getPrimaryPrincipal());

		List<Filiale> filiales = filialeService.findAll();
		model.addAttribute("filiales", filiales);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "purchase/list";
	}

	/** 合同列表 */
	@RequestMapping(value = "/purchase_list", method = RequestMethod.POST)
	@ResponseBody
	public List<Purchase> partList(String start, String end, Long filialeId) {

		List<Purchase> purchases = purchaseService.findAll(start, end, filialeId);

		return purchases;
	}

	/** 合同详细列表 */
	@RequestMapping("/audit")
	public String audit(Long id, ModelMap model) {
		Purchase purchase = purchaseService.find(id);
		List<PurchaseInfo> purchaseParts = purchaseService.find(id).getPurchaseParts();
		model.addAttribute("status", Purchase.Status.values());
		model.addAttribute("purchase", purchase);
		model.addAttribute("purchaseParts", purchaseParts);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "purchase/audit";
	}

	/** 审核 */
	@RequestMapping(value = "/changeStatus", produces = "application/json; charset=utf-8")
	@ResponseBody
	public String changeStatus(String status, Long id) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		Purchase purchase = purchaseService.find(id);
		for (Status s : Status.values()) {
			if (s.toString().equals(status)) {
				purchase.setStatus(s);
				try {
					purchase.setAuditTime(sdf.parse(sdf.format(date)));
					purchase.setAuditor(GetAdmin.getAdmin());
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				purchaseService.update(purchase);

				break;
			}
		}

		return status;
	}

	/** 按配件汇总 */
	@RequestMapping(value = "/report_part")
	public String reportPart(ModelMap model) {
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "purchase/report_part";
	}

	/** 按配件类别汇总 */
	@RequestMapping(value = "/report_part_category")
	public String reportPartCategory(ModelMap model) {
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "purchase/report_part_category";
	}

	/** 按配件供应商汇总 */
	@RequestMapping(value = "/report_supplier")
	public String report(ModelMap model) {
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "purchase/report_supplier";
	}

	/**
	 * 汇总：配件、配件类别、公司
	 * 
	 * @throws JsonProcessingException
	 */
	@RequestMapping(value = "/getReport")
	@ResponseBody
	public Map<String, Float> getReport(String start, String end, String type) throws JsonProcessingException {
		Map<String, Float> map = new HashMap<String, Float>();
		List<Purchase> purchases = purchaseService.findAll(start, end);

		ObjectMapper mapper = new ObjectMapper();

		// 遍历，得到每个合同的明细
		for (Purchase purchase : purchases) {
			List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
			// 遍历明细，得到每个配件
			for (PurchaseInfo purchaseInfo : purchaseInfos) {
				// 得到每个配件
				String Json = mapper.writeValueAsString(purchaseInfo.getPart());
				// 初始化map集合
				map.put(Json, 0F);
			}
		}

		if (type.equals("配件")) {
			// 遍历，得到每个合同的明细
			for (Purchase purchase : purchases) {
				List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
				// 遍历明细，得到每个配件
				for (PurchaseInfo purchaseInfo : purchaseInfos) {
					// 得到每个配件
					String Json = mapper.writeValueAsString(purchaseInfo.getPart());
					// 初始化map集合
					map.put(Json, 0F);
				}
			}

			for (Purchase purchase : purchases) {

				List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
				// 遍历明细，得到每个配件
				for (PurchaseInfo purchaseInfo : purchaseInfos) {
					// 得到每个配件
					String Json = mapper.writeValueAsString(purchaseInfo.getPart());
					map.put(Json, map.get(Json) + purchaseInfo.getAmount());
				}
			}
			return map;
		} else if (type.equals("配件类别")) {
			map.clear();
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
				}
			}
			return map;
		} else if (type.equals("供应商")) {
			map.clear();
			// 遍历，得到每个合同的明细
			for (Purchase purchase: purchases) {
				List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
				// 遍历明细，得到每个配件
				for (PurchaseInfo purchaseInfo: purchaseInfos) {
					// 得到每个配件
					String Json = mapper.writeValueAsString(purchaseInfo.getPart().getSupplier());
					// 初始化map集合
					map.put(Json, 0F);
				}
			}
			
			for (Purchase purchase: purchases) {
				List<PurchaseInfo> purchaseInfos = purchase.getPurchaseParts();// list
				// 遍历明细，得到每个配件
				for (PurchaseInfo purchaseInfo: purchaseInfos) {
					// 得到每个配件
					String Json = mapper.writeValueAsString(purchaseInfo.getPart().getSupplier());
					map.put(Json, map.get(Json) + purchaseInfo.getAmount());
				}
			}
			return map;
		}
		return null;
	}
}
