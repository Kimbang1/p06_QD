package pg.mem;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginBean {

	private String id="sample";
	private String pwd="1234";
	private String uid;
	private String upw;
	
	
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	//id와 pwd를 검증하는 메서드
	public boolean chkAcount(HttpSession session, HttpServletRequest req) {
		
		boolean res=false;
		if(uid.equals(id)&& upw.equals(pwd)) {
			res=true;
			String uid = req.getParameter("uid");
			session.setAttribute("sid",uid);
			//세션은 글로벌 변수
			session.setMaxInactiveInterval(30);
		}
		return res;
	}
}
