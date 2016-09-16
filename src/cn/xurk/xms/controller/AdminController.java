package cn.xurk.xms.controller;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.entity.Filiale;
import cn.xurk.xms.entity.Role;
import cn.xurk.xms.service.AdminService;
import cn.xurk.xms.service.FilialeService;
import cn.xurk.xms.service.RoleService;
import cn.xurk.xms.utils.GetAdmin;
import cn.xurk.xms.utils.jqgrid.JqGridHandler;
import cn.xurk.xms.utils.jqgrid.JqGridPage;

/**
 * 管理员控制器
 * 
 * @author xurk
 *
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource(name = "adminService")
	private AdminService adminService;

	@Resource(name = "roleService")
	private RoleService roleService;

	@Resource(name = "filialeService")
	private FilialeService filialeService;

	/** 检查sn是否重复 */
	@RequestMapping(value = "/checkSn", produces = "text/html")
	@ResponseBody
	public String checkSn(String sn) {
		if (adminService.checkSn(sn)) // 可以用
			return "true";
		else
			return "false";
	}

	/* 登录 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Admin admin, ModelMap model) {

		// 得到主体
		Subject subject = SecurityUtils.getSubject();
		// 创建凭证
		UsernamePasswordToken token = new UsernamePasswordToken(admin.getUsername(), admin.getPassword());

		String error = null;
		try {
			subject.login(token);
		} catch (UnknownAccountException e) {
			error = "用户名或密码错误";
		} catch (IncorrectCredentialsException e) {
			error = "用户名或密码错误";
		}

		if (error != null) {
			// 验证错误

			model.addAttribute("errorMsg", error);
			return "/common/login";
		} else {

			return "redirect:/admin/index";
		}

	}

	/* 重定向到首页 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(ModelMap model) {

		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		return "/admin/index";
	}

	/* 退出 */
	@RequestMapping("/logout")
	public String logout() {

		Subject subject = SecurityUtils.getSubject();
		subject.logout();

		return "redirect:common/login";
	}

	/** 管理员列表页面 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(ModelMap model) {

		model.addAttribute("adminName", GetAdmin.getAdmin().getName());

		return "admin/list";
	}

	/** 管理员列表 */
	@RequestMapping(value = "/admin_list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> partList(JqGridHandler gridHander) {
		Map<String, Object> map = new HashMap<String, Object>();
		JqGridPage<Admin> gridPage = adminService.findPage(gridHander);

		map.put("content", gridPage.getContent());
		map.put("records", gridPage.getRecords());
		map.put("total", gridPage.getTotal());

		return map;
	}

	/** 添加页面 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap model, String name) {
		// 得到所有公司
		model.addAttribute("filiales", filialeService.findAll());

		// 得到所有角色
		model.addAttribute("roles", roleService.findAll());

		model.addAttribute("adminName", GetAdmin.getAdmin().getName());

		return "admin/add";
	}

	/** 添加管理员 */
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Admin admin, Long roleId, Long filialeId) {

		admin.setRole(roleService.find(roleId));
		admin.setFiliale(filialeService.find(filialeId));
		adminService.save(admin);

		return "admin/list";
	}

	/** 为导航栏而设计的修改 */
	@RequestMapping(value = "/edit")
	@ResponseBody
	public String edit(Long id, String oper, Admin admin, ModelMap model) {
		if (oper.equals("del")) {
			adminService.delete(id);
		}

		if (oper.equals("edit")) {

			admin.setSn(adminService.find(id).getSn());
			admin.setRole(adminService.find(id).getRole());
			admin.setFiliale(adminService.find(id).getFiliale());
			adminService.update(admin);

		}
		return "OK";
	}

	/** 详细修改页面 */
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Long id, ModelMap model) {
		// 得到所有角色
		List<Role> roles = roleService.findAll();
		// 得到所有公司
		List<Filiale> filiales = filialeService.findAll();
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("roles", roles);
		model.addAttribute("filiales", filiales);

		Admin admin = adminService.find(id);

		model.addAttribute("admin", admin);

		return "admin/update";
	}

	/** 详细修改 */
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	@ResponseBody
	public void update(Admin admin, Long roleId, Long filialeId) {

		admin.setRole(roleService.find(roleId));
		admin.setFiliale(filialeService.find(filialeId));

		adminService.update(admin);

	}

	/** 详细查看页面 */
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Long id, ModelMap model) {

		Admin admin = adminService.find(id);
		model.addAttribute("adminName", GetAdmin.getAdmin().getName());
		model.addAttribute("admin", admin);

		return "admin/show";
	}

	/** 数据库转储页面 */
	@RequestMapping(value = "/dump")
	public String dump() {
		return "admin/dump";
	}

	/** 导出文件 */
	@RequestMapping(value = "/export", method = RequestMethod.POST)
	@ResponseBody
	public String export(String exePath, String exportPath, String username, String password, String name) {

		String cmd = "\""+exePath+"\\mysqldump.exe" + "\""+" -u" + username +  " -p"+ password +" "+ name +" > " +exportPath;
		System.out.println(cmd);
		
		try {
			
			Runtime.getRuntime().exec("cmd /c"+cmd);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	
		return null;
	}

}
