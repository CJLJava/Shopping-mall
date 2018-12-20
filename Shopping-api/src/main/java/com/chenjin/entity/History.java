package com.chenjin.entity;

import java.io.Serializable;

public class History implements Serializable {
	private String id;
	private String bid;
	private String bname;
	private String u_account;
	private String borrow_time;
	private String return_time;

	@Override
	public String toString() {
		return "History [id=" + id + ", bid=" + bid + ", bname=" + bname + ", u_account=" + u_account + ", borrow_time="
				+ borrow_time + ", return_time=" + return_time + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getU_account() {
		return u_account;
	}

	public void setU_account(String u_account) {
		this.u_account = u_account;
	}

	public String getBorrow_time() {
		return borrow_time;
	}

	public void setBorrow_time(String borrow_time) {
		this.borrow_time = borrow_time;
	}

	public String getReturn_time() {
		return return_time;
	}

	public void setReturn_time(String return_time) {
		this.return_time = return_time;
	}

}