package com.nkl.common.util;

import java.util.Date;

public class FormatDate {
	public static String formatDateToString(Date dt, String format){
		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat(format);
		return sdf.format(dt);
	}
}
