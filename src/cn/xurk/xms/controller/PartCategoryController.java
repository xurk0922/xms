package cn.xurk.xms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.entity.PartCategory;
import cn.xurk.xms.service.PartCategoryService;
import cn.xurk.xms.utils.GetAdmin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

@Controller
@RequestMapping("/admin/part_category")
public class PartCategoryController {
	
	@Resource(name="partCategoryService")
	private PartCategoryService partCategoryService;
	
	
	/** 检查sn是否重复 */
	@RequestMapping("/checkSn")
	@ResponseBody
	public String checkSn(String sn) {
		partCategoryService.checkSn(sn);
		return "true";
	}
	
	
	/** 配件分类列表页面  */
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(ModelMap model) {
		
		
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		
		return "part_category/list";
	}
	
	/** 配件分类列表 */
	@RequestMapping(value="/part_category_list", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> partCategoryList(JqGridHandler gridHander) {
		Map<String, Object> map = new HashMap<String, Object>();
		//List<User> users = userService.findAll();
		JqGridPage<PartCategory> gridPage = partCategoryService.findPage(gridHander);
		
		map.put("content", gridPage.getContent());
		map.put("records", gridPage.getRecords());
		map.put("total", gridPage.getTotal());
		
		return map;
	}
	
	@RequestMapping("/edit")
	@ResponseBody
	public String edit(Long id, String oper, PartCategory partCategory, ModelMap model) {
		if (oper.equals("del")) {
			partCategoryService.delete(id);
		}
		
		if (oper.equals("edit")) {
			partCategory.setSn(partCategoryService.find(id).getSn());
			partCategoryService.update(partCategory);
		}
		return "OK";
	}
	
	@RequestMapping(value="/save")
	@ResponseBody
	public void save(PartCategory partCategory) {
		partCategoryService.save(partCategory);
		
	}
	
}
