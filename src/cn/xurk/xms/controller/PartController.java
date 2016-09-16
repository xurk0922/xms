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

import cn.xurk.xms.entity.Part;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.entity.Supplier;
import cn.xurk.xms.service.PartCategoryService;
import cn.xurk.xms.service.PartService;
import cn.xurk.xms.service.SupplierService;
import cn.xurk.xms.utils.CopyBean;
import cn.xurk.xms.utils.GetAdmin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Controller
@RequestMapping("/admin/part")
public class PartController {

	@Resource(name = "partService")
	private PartService partService;

	@Resource(name = "partCategoryService")
	private PartCategoryService partCategoryService;
	
	@Resource(name = "supplierService")
	private SupplierService supplierService;

	/** 检查sn是否重复 */
	@RequestMapping(value = "/checkSn", produces = "text/html")
	@ResponseBody
	public String checkSn(String sn) {
		if (partService.checkSn(sn)) // 可以用
			return "true";
		else
			return "false";
	}

	/** 配件列表页面 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ModelMap model) {
		
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());

		return "part/list";
	}

	/** 配件列表 */
	@RequestMapping(value = "/part_list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> partList(JqGridHandler gridHander) {
		Map<String, Object> map = new HashMap<String, Object>();
		JqGridPage<Part> gridPage = partService.findPage(gridHander);

		map.put("content", gridPage.getContent());
		map.put("records", gridPage.getRecords());
		map.put("total", gridPage.getTotal());

		return map;
	}

	/** 配件添加页面 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model, String name) {

		// 得到所有分类
		List<PartCategory> categories = partCategoryService.findAll();
		// 得到所有供应商
		List<Supplier> suppliers = supplierService.findAll();
		
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("categories", categories);
		model.addAttribute("suppliers", suppliers);
		return "part/add";
	}

	/** 添加配件 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Part part, Long partCategoryId, Long supplierId) {

		part.setPartCategory(partCategoryService.find(partCategoryId));
		part.setSupplier(supplierService.find(supplierId));
		partService.save(part);

		return "part/list";
	}

	/** 为导航栏而设计的修改 */
	@RequestMapping(value="/edit")
	@ResponseBody
	public String edit(Long id, String oper, Part part, ModelMap model) {
		if (oper.equals("del")) {
			partService.delete(id);
		}

		if (oper.equals("edit")) {
			
			part.setSn(partService.find(id).getSn());
			part.setPartCategory(partService.find(id).getPartCategory());
			part.setSupplier(partService.find(id).getSupplier());
			partService.update(part);
			
			
		}
		return "OK";
	}

	/** 详细修改页面 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Long id, ModelMap model) {
		// 得到所有分类
		List<PartCategory> categories = partCategoryService.findAll();
		// 得到所有供应商
		List<Supplier> suppliers = supplierService.findAll();
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("categories", categories);
		model.addAttribute("suppliers", suppliers);
		
		Part part = partService.find(id);
		
		model.addAttribute("supplier", part.getSupplier());
		model.addAttribute("category", part.getPartCategory());
		model.addAttribute("part", part);

		return "part/update";
	}

	/** 详细修改 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public void update(Part part, Long partCategoryId, Long supplierId) {

		part.setPartCategory(partCategoryService.find(partCategoryId));
		part.setSupplier(supplierService.find(supplierId));

		partService.update(part);

	}
	
	/** 详细查看页面 */
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Long id, ModelMap model) {
		
		Part part = partService.find(id);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("category", part.getPartCategory());
		model.addAttribute("part", part);

		return "part/show";
	}
}
