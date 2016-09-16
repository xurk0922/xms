package cn.xurk.xms.utils;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;

import cn.xurk.xms.entity.Admin;

public class GetAdmin {
	public static Admin getAdmin() {
		Subject subject = SecurityUtils.getSubject();
		PrincipalCollection principalCollection = subject.getPrincipals();
		Admin admin = (Admin)principalCollection.getPrimaryPrincipal();
		
		return admin;
	}
}
