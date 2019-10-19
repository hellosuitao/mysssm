package com.ruixun.utils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
    /*date->string*/
    public static String dateToString(Date date,String pattern){
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        String format = sdf.format(date);
        return format;
    }

    /*string->date*/
    public static Date stringToDate(String str ,String pattern) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat(pattern);
        Date parse = sdf.parse(str);
        return parse;
    }
}
