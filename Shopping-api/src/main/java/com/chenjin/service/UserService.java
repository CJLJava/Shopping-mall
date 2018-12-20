package com.chenjin.service;

import java.sql.SQLException;

import com.chenjin.entity.History;
import com.chenjin.entity.exception.StringException;

public interface UserService {

	void borrow(History history) throws SQLException, StringException;

	// void returnBack(String bookId, String historyId);
}