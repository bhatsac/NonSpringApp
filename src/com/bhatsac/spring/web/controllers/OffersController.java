package com.bhatsac.spring.web.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bhatsac.spring.web.dao.Offer;
import com.bhatsac.spring.web.service.OffersService;

@Controller
public class OffersController {
	
	private OffersService offerService;
	@Autowired
	public void setOfferService(OffersService offerService) {
		this.offerService = offerService;
	}
	/*@RequestMapping("/")
	public ModelAndView showHome(HttpSession session, HttpServletRequest  req){
		session.setAttribute("name", session.getId());
		ModelAndView mv= new ModelAndView("home");
		Map<String,Object> model =mv.getModel();
		model.put("name","Sachin");
		return mv;
	}*/
	@RequestMapping("/offers")
	public String showOffers(Model model){
		model.addAttribute("offersList",offerService.getCurrent());
		return "offers";
	}
	
	@RequestMapping("/createOffers")
	public String createOffers(Model model){
		model.addAttribute("offer",new Offer());
		return "createoffer";
	}
	@RequestMapping(value="/docreate",method=RequestMethod.POST)
	public String doCreate(Model model,@Valid Offer offer,BindingResult result){
		if(result.hasErrors()){
			List<ObjectError> errors=result.getAllErrors();
			for(ObjectError error:errors){
				System.out.println(error.getDefaultMessage());
				return "createoffer";
			}
		}
		System.out.println(offer);
		return "offerCreated";
	}
}
