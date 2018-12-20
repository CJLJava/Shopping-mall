package com.chenjin.service;

import java.sql.SQLException;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chenjin.entity.History;
import com.chenjin.entity.exception.StringException;

@Service
public interface UserService {
	@Transactional
	void borrow(History history) throws SQLException, StringException;

	// void returnBack(String bookId, String historyId);
}