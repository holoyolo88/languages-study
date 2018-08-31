package jspExample.ch4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorldServlet
 */
//어노테이션 :프로그램 코드에 특정한 동작을 수행하는 일종의 주석 형태의 문장을 통해
//:외부 파일에 설정해야 하는 번거로움 등을 줄이고 프로그램 소스 가독성을 높이려는 프로그래밍 기법
// urlPatterns : 웹 콘텐츠에 대한 접근 URL을 서블릿 클래스와 매핑시켜 줌
@WebServlet(description = "firstServlet", urlPatterns = { "/HelloWorldServlet" })
public class HelloWorldServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorldServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// mime type (application/msword)
		response.setContentType("text/html; charset = UTF-8");
		response.getWriter().append("HelloWorld");
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 둘 중 한 가지 방식만으로도 처리할 수 있지만 다른 방식의 요청이 생긴다면 서버 오류가 발생할 수 있기 때문에 doGet() 호출
		doGet(request, response);
	}
	
}
