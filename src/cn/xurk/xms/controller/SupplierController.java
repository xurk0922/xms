package cn.xurk.xms.controller;

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

import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.entity.Supplier;
import cn.xurk.xms.service.SupplierService;
import cn.xurk.xms.utils.GetAdmin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Controller
@RequestMapping("/admin/supplier")
public class SupplierController {

	@Resource(name = "supplierService")
	private SupplierService supplierService;

	/** 检查sn是否重复 */
	@RequestMapping(value = "/checkSn", produces = "text/html")
	@ResponseBody
	public String checkSn(String sn) {
		if (supplierService.checkSn(sn))
			return "true";
		else
			return "false";
	}

	/** 供应商列表页面 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ModelMap model) {
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());

		return "supplier/list";
	}

	/** 供应商列表 */
	@RequestMapping(value = "/supplier_list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> partList(JqGridHandler gridHander) {
		Map<String, Object> map = new HashMap<String, Object>();
		JqGridPage<Supplier> gridPage = supplierService.findPage(gridHander);

		map.put("content", gridPage.getContent());
		map.put("records", gridPage.getRecords());
		map.put("total", gridPage.getTotal());

		return map;
	}

	/** 供应商添加页面 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model, String name) {
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "supplier/add";
	}

	/** 添加供应商 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Supplier supplier) {

		supplierService.save(supplier);

		return "supplier/list";
	}

	/** 为导航栏而设计的修改 */
	@RequestMapping(value = "/edit")
	@ResponseBody
	public String edit(Long id, String oper, Supplier supplier, ModelMap model) {
		if (oper.equals("del")) {
			supplierService.delete(id);
		}

		if (oper.equals("edit")) {
			supplier.setSn(supplierService.find(id).getSn());
			supplierService.update(supplier);
			
		}
		return "OK";
	}
	
	/** 详细修改页面 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Long id, ModelMap model) {
		

		Supplier supplier = supplierService.find(id);
		
		model.addAttribute("supplier", supplier);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "supplier/update";
	}
	
	/** 详细修改 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Supplier supplier) {


		supplierService.update(supplier);

		return "supplier/list";
	}
	
	/** 详细查看页面 */
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Long id, ModelMap model) {
		

		Supplier supplier = supplierService.find(id);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("supplier", supplier);

		return "supplier/show";
	}
}
