package cn.xurk.xms.utils.jqgrid;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页查询的条件
 * @author Administrator
 *
 */
public class Filter {
	// 是且 还是或
	private String groupOp;
	
	private List<Rule> rules = new ArrayList();

	public String getGroupOp() {
		return groupOp;
	}

	public void setGroupOp(String groupOp) {
		this.groupOp = groupOp;
	}

	public List<Rule> getRules() {
		return rules;
	}

	public void setRules(List<Rule> rules) {
		this.rules = rules;
	}
	
}
