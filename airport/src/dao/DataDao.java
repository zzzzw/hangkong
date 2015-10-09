package dao;

import java.util.ArrayList;
import java.util.List;

import util.DigestUtil;

public class DataDao {
    //返回符合条件的所有车次(查询结果)
    public static List<String[]> cxcp(String sfz,String zdz)
    {
	System.out.println("始发站是"+sfz);
	System.out.println("终点站是"+zdz);
	List<String[]> result=new ArrayList<String[]>();
	String[] s=new String[5];
	s[0]="mh370";
	s[1]="马来西亚";
	s[2]="香港";
	s[3]="12个小时";
	s[4]="120张";	
	System.out.println(s[1].toString());
	if(s[1].toString().equals(sfz))
	{
	    result.add(s);	
	    /*if(s[2].toString().equals(zdz))
	    {
		result.add(s);	
	    }*/
//	    else
//	    {
//		s[0]="null";
//		s[1]="null";
//		s[2]="null";
//		s[3]="null";
//		s[4]="null";	
//		result.add(s);
//	    }
	    
	    
	}
	//result.add(s);	
	String[] ss=new String[5];
	ss[0]="mh380";
	ss[1]="广州";
	ss[2]="深圳";
	ss[3]="20个小时";
	ss[4]="200张";
	System.out.println(ss[1].toString());
	if(ss[1].toString().equals(sfz))
	{
	    result.add(ss);
	    /*if(ss[2].toString().equals(zdz))
	    {
		 result.add(ss);	
	    }*/
//	    else
//	    {
//		ss[0]="null";
//		ss[1]="null";
//		ss[2]="null";
//		ss[3]="null";
//		ss[4]="null";	
//		result.add(ss);
//	    }
//	   
	   
	}
//	 /result.add(ss);
	
	
	
	//String querystring="select * from dp where sfz=? and zdz=?";
//	String querystring="select * from dp where 1=1";
//	Query queryObject=gs().createQuery(querystring);
//	queryObject.setParameter(0,sfz);
//	queryObject.setParameter(1,zdz);
	

	
	//return queryObject.list();
	return result;
	
		

    }
    // 顾客信息选择页面
    public static List<String> gkxz(String user) {
	List<String> gk = new ArrayList<String>();
	gk.add("张全雄");
	gk.add("杰豪");
	gk.add("张明");
	gk.add("李刚");
	gk.add("习近平");
	gk.add("李克强");
	gk.add("王岐山");
	gk.add("张无忌");

	return gk;
    }

    // 根据选择的用户，返回订单的详细信息
    public static List<String[]> ddxx(String username) {
	List<String[]> list = new ArrayList<String[]>();

	if (username != null) {
	    String[] names = username.split(",");
	    for (int i = 0; i < names.length; i++) {
		String[] s = new String[4];
		s[0] = names[i].trim();
		s[1] = s[0] + "选择的头等舱";
		s[2] = Integer.toString((int) (Math.random() * 100));
		s[3] = Integer.toString(Integer.parseInt(s[2]) * 100);

		list.add(s);

	    }

	}
	return list;

    }

    public static String buildHmac(String p0_Cmd, String p1_MerId,
	    String p2_Order, String p3_Amt, String p4_Cur, String p5_Pid,
	    String p6_Pcat, String p7_Pdesc, String p8_Url, String p9_SAF,
	    String pa_MP, String pd_FrpId, String pr_NeedResponse,
	    String keyValue) {
	StringBuffer s = new StringBuffer();
	s.append(p0_Cmd);
	s.append(p1_MerId);
	s.append(p2_Order);
	s.append(p3_Amt);
	s.append(p4_Cur);
	s.append(p5_Pid);
	s.append(p6_Pcat);
	s.append(p7_Pdesc);
	s.append(p8_Url);
	s.append(p9_SAF);
	s.append(pa_MP);
	s.append(pd_FrpId);
	s.append(pr_NeedResponse);
	String sNewString = DigestUtil.hmacSign(s.toString(), keyValue);

	return sNewString;
    }

}
