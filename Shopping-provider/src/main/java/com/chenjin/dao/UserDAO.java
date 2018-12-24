package com.chenjin.dao;

import org.springframework.stereotype.Repository;

import com.chenjin.entity.User;

/**
 * UserDAO
 * 
 * @author CJL
 *
 */
@Repository
public interface UserDAO {
	void insertOne(User user);
}
