package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap11.Member;

/**
 * Servlet implementation class ThreadServletEx1
 */
@WebServlet("/thread1")
public class ThreadServletEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int i = 0;
	private Member member = new Member();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThreadServletEx1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 이렇게 하면 위험 / 선언만 하고 변경,이용은 스레드때문에 안전하지 않으니 하지 말자
		//i++;
		//member.setName("name");
		
		/*
		request          스레드 때문에 이것만 안전 이것만 쓰자.
		session          불가피하게 쓰는 경우도 있다.
		application
		*/
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
