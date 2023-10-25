package interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;

import beans.CourseBean;
import service.TopService;

public class TopInterceptor implements HandlerInterceptor {

	private TopService topService;
	
	public TopInterceptor(TopService topService) {
		this.topService = topService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		List<CourseBean> course_list = topService.courseList();
		
		request.setAttribute("course_list", course_list);
		
		return true;
 		
	}
}
