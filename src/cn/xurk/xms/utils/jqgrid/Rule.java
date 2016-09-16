package cn.xurk.xms.utils.jqgrid;
/**
 * 分页查询的规则
 * @author Administrator
 *
 */
public class Rule {
	// 查询的字段
	private String field;
	
	// 查询的操作
	private String op;
	
	// 查询条件中的值
	private String data;

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}
	
}
