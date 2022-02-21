package com.codingdojo.omikuji.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.omikuji.entity.Omikuji;

@Controller
public class OmikujiController {
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
	@RequestMapping("/omikuji")
	public String omikujiForm(HttpSession session, Model model) {
		if (session.getAttribute("no-form-data") != null) {
			model.addAttribute("MESSAGE", "You must send an Omikuji to see the result");
		}
		return "form";
	}
	
	@RequestMapping("/omikuji/show")
	public String omikujiShow(HttpSession session) {
		if (session.getAttribute("omikuji") == null) {
			session.setAttribute("no-form-data", true);
			return "redirect:/omikuji";
		}
		
		session.setAttribute("no-form-data", null);
		return "show";
	}
	
	@RequestMapping(value="/omikuji/save", method=RequestMethod.POST)
	public String omikujiSave(Omikuji omikuji, HttpSession session) {
		session.setAttribute("omikuji", omikuji);
		return "redirect:/omikuji/show";
	}
}
