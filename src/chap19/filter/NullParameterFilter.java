package chap19.filter;

import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class NullParameterFilter
 */
//@WebFilter("/NullParameterFilter")
public class NullParameterFilter implements Filter {
	
	private String[] parameterNames = null;
		
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig config) throws ServletException {
		String names = config.getInitParameter("parameterNames");  //web-xml 저장해놓은거 불러올수 있다. 위의FilterConfig config가
//		System.out.println(names);
		StringTokenizer st = new StringTokenizer(names, ", ");
		parameterNames = new String[st.countTokens()];
		
		for(int i=0; st.hasMoreTokens(); i++) {
			parameterNames[i] = st.nextToken();
		}
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// place your code here
		NullParameterRequestWrapper requestWrapper 
		= new NullParameterRequestWrapper((HttpServletRequest)request);
		requestWrapper.checkNull(parameterNames);
		System.out.println("abc");		
		// pass the request along the filter chain
		chain.doFilter(requestWrapper, response);
	}

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}


}
