package com.chenjin.service;

import com.chenjin.entity.User;

/**
 * 
 * @author CJL
 *
 */
public interface UserService {
	void register(User user);

	String selectPasswordByPhone(String phone);

	User selectUserByPhone(String phone);

	boolean isExistUserName(String userName);
}