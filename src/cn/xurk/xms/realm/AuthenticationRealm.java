package cn.xurk.xms.realm;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import cn.xurk.xms.entity.Admin;
import cn.xurk.xms.entity.Role;
import cn.xurk.xms.service.AdminService;

public class AuthenticationRealm extends AuthorizingRealm {

	@Resource(name = "adminService")
	private AdminService userService;

	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 创建授权信息
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();

		// 获取当前登录凭证
		Admin admin = (Admin) super.getAvailablePrincipal(principals);
		
		info.addRole(admin.getRole().getName());
		
		return info;
	}

	/**
	 * 验证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

		String username = (String) token.getPrincipal();

		Admin admin = userService.findByUsername(username);

		if (admin == null) {
			throw new UnknownAccountException();// 没找到帐号
		}

		// 交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配，如果觉得人家的不好可以自定义实现
		SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(admin, // 用户姓名
				admin.getPassword(), // 密码
				getName() // realm name
		);
		return authenticationInfo;
	}

}
