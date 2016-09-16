package cn.xurk.xms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.service.FilialeService;
import cn.xurk.xms.utils.GetAdmin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

/**
 * 分公司相关的控制器
 * @author xurk
 *
 */
@Controller
@RequestMapping("/admin/filiale")
public class FilialeController {
	
	@Resource(name = "filialeService")
	private FilialeService filialeService;
	
	/** 检查sn是否重复 */
	@RequestMapping(value = "/checkSn", produces = "text/html")
	@ResponseBody
	public String checkSn(String sn) {
		if (filialeService.checkSn(sn))
			return "true";
		else
			return "false";
	}
	
	/** 分公司列表页面 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ModelMap model) {
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());

		return "filiale/list";
	}
	
	/** 分公司列表 */
	@RequestMapping(value = "/filiale_list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> filialeList(JqGridHandler gridHander) {
		Map<String, Object> map = new HashMap<String, Object>();
		JqGridPage<Filiale> gridPage = filialeService.findPage(gridHander);

		map.put("content", gridPage.getContent());
		map.put("records", gridPage.getRecords());
		map.put("total", gridPage.getTotal());

		return map;
	}
	
	/** 配件添加页面 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model, String name) {

		model.addAttribute("adminName", GetAdmin.getAdmin().getName());

		return "filiale/add";
	}
	
	/** 添加分公司 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Filiale filiale) {

		filialeService.save(filiale);

		return "filiale/list";
	}
	
	/** 为导航栏而设计的修改 */
	@RequestMapping(value="/edit")
	@ResponseBody
	public String edit(Long id, String oper, Filiale filiale, ModelMap model) {
		if (oper.equals("del")) {
			filialeService.delete(id);
		}

		if (oper.equals("edit")) {
			
			filiale.setSn(filialeService.find(id).getSn());
			filialeService.update(filiale);
		}
		return "OK";
	}
	
	/** 详细修改页面 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Long id, ModelMap model) {
		
		Filiale filiale = filialeService.find(id);
		
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("filiale", filiale);

		return "filiale/update";
	}
	
	/** 详细修改 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public void update(Filiale filiale) {
		
		filialeService.update(filiale);
	}
	
	/** 详细查看页面 */
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Long id, ModelMap model) {
		

		Filiale filiale = filialeService.find(id);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("filiale", filiale);

		return "filiale/show";
	}
}
