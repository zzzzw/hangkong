package common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport{
	
	
	// ȡ��Request/Response/Session�ļ򻯺��� //
		
		/**
		 * ȡ��HttpRequest�ļ򻯷���.
		 */
		public static HttpServletRequest getRequest() {
			return ServletActionContext.getRequest();
		}

		/**
		 * ȡ��HttpResponse�ļ򻯷���.
		 */
		public static HttpServletResponse getResponse() {
			return ServletActionContext.getResponse();
		}

}
