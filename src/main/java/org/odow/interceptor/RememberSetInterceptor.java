package org.odow.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;

@Log
public class RememberSetInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
				
		// 사용자가 정상적으로 로그인 했다면  model에 id 존재 
		Object obj = modelAndView.getModel().get("id");
		
		log.info("모델 : " + modelAndView);

	   // 로그인 안 된 사람
		if(obj == null) {
			response.sendRedirect("/intro");
			return;
		}
		
		// 정상 로그인 -> HttpSession에 담자
		log.info("정상적으로 로그인 된 사용자 : " + obj);
		request.getSession().setAttribute("login", obj);
		
		try {
			Boolean remember = (Boolean)modelAndView.getModel().get("remember");
			
			// 로그인 유지가 체크 된 경우 -> 쿠키 생성
			if(remember) {
				Cookie loginCookie = new Cookie("login", obj.toString());
				loginCookie.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(loginCookie);
				log.info("체크됨");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
//		response.sendRedirect("/main/index");

	}
}
