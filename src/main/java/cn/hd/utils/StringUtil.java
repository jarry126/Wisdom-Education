package cn.hd.utils;
/**
 * 测试字符串是否为空，为null，去空格是否相等
 * @author Administrator
 *
 */
public class StringUtil {
	public static boolean isNullOrBlank(String str){
		if(str!=null && !"".equals(str.trim())){
			return false;
		}
		return true;
	}
}
