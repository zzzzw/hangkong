<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<script>
<!--
function sub(){
document.yeepay.submit();
}
setTimeout(sub,1000);//�Ժ���Ϊ��λ��.1000����һ����.��������Ҫ�޸����ʱ��.
//-->
</script>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'q6.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form name="yeepay" action="https://www.yeepay.com/app-merchant-proxy/node" method='post'>      
    <input type='hidden' name='p0_Cmd'   value="${messageType}"> <!-- ��������,����֧���̶�ΪBuy --><!--  
    <input type='hidden' name='p1_MerId' value="${merchantID}">  �̼�ID   p1_MerId
    -->
     <input type='hidden' name='p1_MerId' value="${p1_MerId}">
    <input type="hidden" name="p2_Order" value="${orderid}"> <!-- �̼ҵĽ��׶����� -->  
    <input type='hidden' name='p3_Amt'   value="${amount}"> <!-- ������� -->  
    <input type='hidden' name='p4_Cur'   value="${currency}"> <!-- ���ҵ�λ -->  
    <input type='hidden' name='p5_Pid'   value="${productId}"> <!-- ��ƷID -->  
    <input type='hidden' name='p6_Pcat'  value="${productCat}"> <!-- ��Ʒ���� -->  
    <input type='hidden' name='p7_Pdesc' value="${productDesc}"> <!-- ��Ʒ���� -->  
    <input type='hidden' name='p8_Url'   value="${merchantCallbackURL}"> <!-- ���׽��֪ͨ��ַ -->  
    <input type='hidden' name='p9_SAF'   value="${addressFlag}"> <!-- ��Ҫ��д�ͻ���Ϣ 0������Ҫ 1:��Ҫ -->  
    <input type='hidden' name='pa_MP'    value="${sMctProperties}"> <!-- �̼���չ��Ϣ -->  
    <input type='hidden' name='pd_FrpId' value="${frpId}"> <!-- ����ID -->  
    <!-- Ӧ����� Ϊ��1��: ��ҪӦ�����;Ϊ��0��: ����ҪӦ����� -->  
    <input type="hidden" name="pr_NeedResponse"  value="0">  
    <input type='hidden' name='hmac' value="${hmac}"><!-- MD5-hmac��֤�� --><!--  
    <input type="submit" value="����" style="display:none;">  
-->
 <input type="submit" value="����" style="display:none;">  
</form>  

  </body>
</html>
