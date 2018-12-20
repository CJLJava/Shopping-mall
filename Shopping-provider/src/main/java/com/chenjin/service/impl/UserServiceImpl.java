package com.chenjin.service.impl;

import java.sql.SQLException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chenjin.dao.BookDAO;
import com.chenjin.dao.BorrowHistoryDAO;
import com.chenjin.entity.History;
import com.chenjin.entity.constants.MyConstants;
import com.chenjin.entity.exception.StringException;
import com.chenjin.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	BookDAO bookDAO;
	@Resource
	BorrowHistoryDAO borrowHistoryDAO;

	@Override
	public void borrow(History history) throws SQLException, StringException {
		bookDAO.updateIsBorrowed(history.getBid(), MyConstants.CAN_NOT_BORROW);
		System.out.println("这里肯定执行了嘛");
		if (true) {
			throw new StringException("事务中出了异常");
		}
		borrowHistoryDAO.insertOne(history);
	}
	/*
	 * public void returnBack(String bookId, String historyId) throws SQLException {
	 * bookDAO.updateIsBorrowed(bookId, MyConstants.CAN_BORROW);
	 * borrowHistoryDAO.returnBack(historyId); }
	 */

}
