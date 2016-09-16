package cn.xurk.xms.utils.jqgrid;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页的数据
 * @author Administrator
 *
 */
public class JqGridPage<T> {
	
	// 该页面中所需要显示的数据
	private List<T> content = new ArrayList<T>();
	
	// 总页数
	private Integer total;
	// 分页属性
	private JqGridHandler gridHandler;
	// 总记录数
	private Integer records;

	public void setRecords(Integer records) {
		this.records = records;
	}

	public Integer getRecords() {
		return records;
	}

	public List<T> getContent() {
		return content;
	}

	public void setContent(List<T> content) {
		this.content = content;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public JqGridHandler getGridHandler() {
		return gridHandler;
	}

	public void setGridHandler(JqGridHandler gridHandler) {
		this.gridHandler = gridHandler;
	}
	
	
}
