package test.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.controller.Action;
import test.controller.ActionForward;
import test.member.dto.MemberDto;

public class MemberListAction extends Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		MemberDto dto1= new MemberDto(1, "흰둥이", "서울숲");
		MemberDto dto2= new MemberDto(2, "짱구", "잠실");
		MemberDto dto3= new MemberDto(3, "짱아", "삼성");
		
		List<MemberDto> list= new ArrayList<>();
		list.add(dto1);
		list.add(dto2);
		list.add(dto3);
		
		// 회원 목록을 request 영역에 담기
		request.setAttribute("list", list);
		
		return new ActionForward("/views/members.jsp");
	}
	
}
