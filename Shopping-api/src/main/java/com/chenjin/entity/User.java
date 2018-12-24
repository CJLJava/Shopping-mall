package com.chenjin.entity;

import java.io.Serializable;

/**
 * 要能在生产者和消费者之间传递，实体类得序列化
 * 
 * @author CJL
 *
 */
public class User implements Serializable {
	private static final long serialVersionUID = 351999014142842026L;
	private String userName;
	private String password;
	private String province;
	private String city;
	private String county;
	private String detailedAddress;
	private String phone;

	public User() {
	}

	public User(String userName, String password, String province, String city, String county, String detailedAddress,
			String phone) {
		this.userName = userName;
		this.password = password;
		this.province = province;
		this.city = city;
		this.county = county;
		this.detailedAddress = detailedAddress;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password + ", province=" + province + ", city=" + city
				+ ", county=" + county + ", detailedAddress=" + detailedAddress + ", phone=" + phone + "]";
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getDetailedAddress() {
		return detailedAddress;
	}

	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}