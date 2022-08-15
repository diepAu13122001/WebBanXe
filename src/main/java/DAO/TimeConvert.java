package DAO;


import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class TimeConvert {

    public Date[] TimeTAMPPSqlToJava (String timeTAMP) {
        return null;
    }

    public Date DateSqlToJava (String date) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date utilDate = sdf.parse(date);
        return new Date(utilDate.getTime());
    }

    public Date TimeSqlToJava (String time) {

        return null;
    }

    public static void main(String[] args) throws ParseException {
        String strDate = "2011-12-31";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        java.util.Date date = sdf.parse(strDate);
        java.sql.Date sqlDate = new Date(date.getTime());
        System.out.println("String converted to java.sql.Date :" + sqlDate);

//        java.util.Date utilDate = new java.util.Date();
//        java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
//        System.out.println("utilDate:" + utilDate);
//        System.out.println("sqlDate:" + sqlDate);
        Time sqlTime = new Time(Calendar.getInstance().getTime().getTime());
        System.out.println(sqlTime);
    }

}
