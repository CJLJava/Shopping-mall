package com.chenjin.controller;

import java.sql.SQLException;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chenjin.entity.History;
import com.chenjin.entity.exception.StringException;
import com.chenjin.entity.util.StringUtil;
import com.chenjin.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Resource(name = "userService")
	UserService userService;

	@RequestMapping("/borrow.do")
	public String borrow() {
		History history = new History();
		history.setId(StringUtil.getUUID());
		history.setU_account("Robin");
		history.setBid("436662937fc94bde8ba18ca7c879a9d4");
		try {
			userService.borrow(history);
		} catch (SQLException | StringException e) {
			e.printStackTrace();
		}
		return "forward:/showBookByType.jsp";
	}
}
