package com.chenjin.entity.util;

import java.util.UUID;


/**
 * 
 * @author 字符串操作工具类
 *
 */
public class StringUtil {
	private StringUtil() {

	}

	public static boolean isEmpty(String string) {
		if (string == null || "".equals(string.trim())) {
			return true;
		}
		return false;
	}

	public static String getUUID() {
		String randomUUID = UUID.randomUUID().toString();
		randomUUID = randomUUID.replaceAll("-", "");
		return randomUUID;
	}

}
