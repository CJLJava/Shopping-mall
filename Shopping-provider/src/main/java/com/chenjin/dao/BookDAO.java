package com.chenjin.dao;

import java.sql.SQLException;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BookDAO {
	void updateIsBorrowed(@Param(value = "bookId") String bookId, @Param(value = "isBorrowed") String isBorrowed)
			throws SQLException;

}