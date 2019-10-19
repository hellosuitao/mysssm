import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class Test {

    @org.junit.Test
    public void test1() throws ParseException {
        // 使用parse()方法将文本转换为日期
    String d = "2014-6-1 21:05:36";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
Date date = sdf.parse(d);
System.out.println(date);

    }
}
