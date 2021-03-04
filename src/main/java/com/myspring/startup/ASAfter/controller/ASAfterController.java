package com.myspring.startup.ASAfter.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface ASAfterController {
	/* AS현황 전체리스트 조회 */
	public ModelAndView selectASAfterList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	/* AS현황 사용자 리스트 조회 */
	public ModelAndView selectUserASAfterList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	/* AS현황 제조사 리스트 조회 */
	public ModelAndView selectMfrASAfterList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	/* AS현황 상세정보 조회 */
	public ModelAndView ASAfterListDetail(HttpServletRequest request, HttpServletResponse response, int asno) throws Exception;
	/* 상세정보 승인 */
	public ModelAndView insertASrespond(HttpServletRequest request, HttpServletResponse response) throws Exception;
	/* AS현황 검색 기능 */
	public ModelAndView searchASAfterList(HttpServletRequest request, HttpServletResponse response) throws Exception;
}