package action;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import common.BaseAction;

import dao.DataDao;

//struts注解
@SuppressWarnings("serial")
@Results( { 
    @Result(name = "q2", location = "/ticket/q2.jsp"),
    @Result(name = "q3", location = "/ticket/q3.jsp"),
    @Result(name = "q4", location = "/ticket/q4.jsp"),
    @Result(name = "q5", location = "/ticket/q5.jsp"),
    @Result(name = "q6", location = "/ticket/q6.jsp"),
		

})
public class airAction extends BaseAction
{
    private String sfz;
    private String zdz;
    private List<String[]> cpjg;//查票结果
    private List<String> ydry;//预定人员
    private String checi;
    private String renyuan;//订票的人
    private List<String[]> ryList;
    private int zonge;
    
    
    
    private String orderid="111";
    private String amount="zonge";
    private String pd_FrpId;
    private String p1_MerId="10000432521";
    private String keyValue="8UPp0KE8sq73zVP370vko7C39403rtK1YwX40Td6irH216036H27Eb12792t";
    private String merchantCallbackURL="localhost:8080/";
    private String messageType="Buy";
    private String currency="CNY";
    private String productDes="";
    private String productCat="";
    private String productId="";
    private String addressFlag="0";
    private String sMctProperties="";
    private String pr_NeedResponse="";
    private String md5hmac=DataDao.buildHmac(messageType,p1_MerId,orderid,amount,currency,
	    productId,productCat,productDes,merchantCallbackURL,addressFlag,sMctProperties,
	    pd_FrpId,pr_NeedResponse,keyValue);
    
    
    



    
    public String getOrderid() {
        return orderid;
    }
    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }
    public String getAmount() {
        return amount;
    }
    public void setAmount(String amount) {
        this.amount = amount;
    }
    public String getPd_FrId() {
        return pd_FrpId;
    }
    public void setPd_FrId(String pdFrpId) {
        pd_FrpId = pdFrpId;
    }
    public String getP1_MerId() {
        return p1_MerId;
    }
    public void setP1_MerId(String p1MerId) {
        p1_MerId = p1MerId;
    }
    public String getKeyValue() {
        return keyValue;
    }
    public void setKeyValue(String keyValue) {
        this.keyValue = keyValue;
    }
    public String getMerchantCallbackURL() {
        return merchantCallbackURL;
    }
    public void setMerchantCallbackURL(String merchantCallbackURL) {
        this.merchantCallbackURL = merchantCallbackURL;
    }
    public String getMessageType() {
        return messageType;
    }
    public void setMessageType(String messageType) {
        this.messageType = messageType;
    }
    public String getCurrency() {
        return currency;
    }
    public void setCurrency(String currency) {
        this.currency = currency;
    }
    public String getProductDes() {
        return productDes;
    }
    public void setProductDes(String productDes) {
        this.productDes = productDes;
    }
    public String getProductCat() {
        return productCat;
    }
    public void setProductCat(String productCat) {
        this.productCat = productCat;
    }
    public String getProductId() {
        return productId;
    }
    public void setProductId(String productId) {
        this.productId = productId;
    }
    public String getAddressFlag() {
        return addressFlag;
    }
    public void setAddressFlag(String addressFlag) {
        this.addressFlag = addressFlag;
    }
    public String getsMctProperties() {
        return sMctProperties;
    }
    public void setsMctProperties(String sMctProperties) {
        this.sMctProperties = sMctProperties;
    }
    public String getPr_NeedResponse() {
        return pr_NeedResponse;
    }
    public void setPr_NeedResponse(String prNeedResponse) {
        pr_NeedResponse = prNeedResponse;
    }
    public String getMd5hmac() {
        return md5hmac;
    }
    public void setMd5hmac(String md5hmac) {
        this.md5hmac = md5hmac;
    }
    
   
    
    
    
    //查票(查票结果)
    public String cp() throws Exception
    {
	System.out.println("开始查票");
	
	cpjg=DataDao.cxcp(sfz, zdz);
	
	System.out.println("查票成功，输出结果");
	return "q2";
    }
    //预定人员页面
    public String yd()throws Exception
    {
	
	String user="admin";
	
	ydry=DataDao.gkxz(user);
	System.out.println(ydry);
	return "q3";
	
    }
    
    // 此方法确认订单
    public String qrdd() throws Exception
    {
	// 查询选择的用户信息，往Jsp送
	ryList=DataDao.ddxx(renyuan);
	    
	return "q4";
    }
    public String zf() throws Exception
    {
	System.out.println("接受的总和为："+zonge);		
	System.out.println("传到jsp页面");	
	return "q5";
    }
    public String fukuan() throws Exception
    {
	System.out.println("接受的总和为："+zonge);		
	System.out.println("传到jsp页面");	
	System.out.println(pd_FrpId);
	
	
	return "q6";	
    }

    
    
    public String getSfz() {
        return sfz;
    }
    public void setSfz(String sfz) {
        this.sfz = sfz;
    }
    public String getZdz() {
        return zdz;
    }
    public void setZdz(String zdz) {
        this.zdz = zdz;
    }
    public List<String[]> getCpjg() {
        return cpjg;
    }


    public void setCpjg(List<String[]> cpjg) {
        this.cpjg = cpjg;
    }
    public List<String> getYd() {
        return ydry;
    }
    public void setYd(List<String> ydry) {
        this.ydry = ydry;
    }
    public List<String> getYdry() {
        return ydry;
    }
    public void setYdry(List<String> ydry) {
        this.ydry = ydry;
    }
    public String getCheci() {
        return checi;
    }
    public void setCheci(String checi) {
        this.checi = checi;
    }
    public String getRenyuan() {
        return renyuan;
    }
    public void setRenyuan(String renyuan) {
        this.renyuan = renyuan;
    }
    public List<String[]> getRyList() {
        return ryList;
    }
    public void setRyList(List<String[]> ryList) {
        this.ryList = ryList;
    }
    public int getZonge() {
        return zonge;
    }
    public void setZonge(int zonge) {
        this.zonge = zonge;
    }

}
