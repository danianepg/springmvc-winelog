package br.com.danianepg.springmvcwinelog.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.danianepg.springmvcwinelog.domain.Wine;
import br.com.danianepg.springmvcwinelog.repositories.WineRepository;

@Controller
@RequestMapping("/winelog")
public class WineLogController {
	
	@Autowired
	private WineRepository wineRepository;
	
	@RequestMapping(value = "/addupdate", method = RequestMethod.GET)
	public String addUpdate(Model model, @RequestParam(value = "id", required = false) String id ) {
		
		model.addAttribute("title", "Create Winelog");
		model.addAttribute("formAction", "/winelog/addupdate");
		model.addAttribute("wine", new Wine());		
		
		return "winelog.create.tiles";
	}
	
	@RequestMapping(value = "/addupdate", method = RequestMethod.POST)
	public String addUpdate(@ModelAttribute("wine") @Valid Wine wine, BindingResult result, Model model){
		
		if(result.hasErrors()) {
			model.addAttribute("title", "Create Winelog");
			return "winelog.create.tiles";
		}
		
		wineRepository.save(wine);		
		return "winelog.create.tiles";
	}
	

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<Wine> wineList = wineRepository.findAll();
		for(Wine w : wineList) {
			System.out.println(w.getId() + " - " +w.getName());
		}

		return "winelog.list.tiles";
	}
	
	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts(Model model) {
		return "winelog.charts.tiles";
	}
	

}
