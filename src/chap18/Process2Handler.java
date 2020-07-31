package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Process2Handler implements CommandHandler { //커맨드 핸들러 상속
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response){
		return "프로세스 2";
	}
}