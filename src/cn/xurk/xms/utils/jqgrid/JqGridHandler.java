package cn.xurk.xms.utils.jqgrid;

/**
 * 分页属性类
 * 
 * @author Administrator
 *
 */
public class JqGridHandler {

	// 页面记录数
	private Integer rows;

	// 当前页
	private Integer page;

	// 排序的字段
	private String sidx;

	// 排序的方式：asc、desc
	private String sord;
	
	private Filter filter;

	public Filter getFilter() {
		return filter;
	}

	public void setFilter(Filter filter) {
		this.filter = filter;
	}

	public JqGridHandler(Integer rows, Integer page, String sidx, String sord) {
		super();
		this.rows = rows;
		this.page = page;
		this.sidx = sidx;
		this.sord = sord;
	}

	public JqGridHandler() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public String getSidx() {
		return sidx;
	}

	public void setSidx(String sidx) {
		this.sidx = sidx;
	}

	public String getSord() {
		return sord;
	}

	public void setSord(String sord) {
		this.sord = sord;
	}

	@Override
	public String toString() {
		return "JqGridHandler [rows=" + rows + ", page=" + page + ", sidx=" + sidx + ", sord=" + sord + "]";
	}
	
	

}
