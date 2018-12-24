package com.chenjin.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chenjin.dao.UserDAO;
import com.chenjin.entity.User;
import com.chenjin.service.UserService;

/**
 * 
 * @author CJL
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	UserDAO userDAO;

	@Override
	public void register(User user) {
		System.out.println("UserServiceImpl/registry");
		userDAO.insertOne(user);
	}
}