package spring.mvc.benkfit.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface Service_sws {
	
	// 이벤트 목록
	public void eventList_sws(HttpServletRequest req, Model model);
	
	// 이벤트 상세 페이지
	public void eventContentForm_sws(HttpServletRequest req, Model model);
	
	// 이벤트 추가 처리
	public String event_addPro_sws(HttpServletRequest req, Model model);
	
	// 이벤트 수정 페이지  
	public void event_modifyForm_sws(HttpServletRequest req, Model model);
	
	// 이벤트 수정 처리
	public void event_modifyPro_sws(HttpServletRequest req, Model model);
}
