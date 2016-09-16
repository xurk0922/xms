package cn.xurk.xms.service.impl;

import org.junit.Test;

public class TestExec {
	@Test
	public void testExec() {
		try {
			String exePath = "D:\\Program Files\\MySQL\\MySQL Server 5.5\\bin";
			String username = "root";
			String password = "root";
			String name = "xms";
			String exportPath = "E:\\Desktop\\1.sql";
			String cmd = "\""+exePath+"\\mysqldump.exe" + "\""+" -u" + username +  " -p"+ password +" "+ name +" > " +exportPath;
			System.out.println(cmd);
			Runtime.getRuntime().exec("cmd /c" + cmd);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}
