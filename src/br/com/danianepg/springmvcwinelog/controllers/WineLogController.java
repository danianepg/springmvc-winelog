package br.com.danianepg.springmvcwinelog.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.danianepg.springmvcwinelog.domain.Country;
import br.com.danianepg.springmvcwinelog.domain.Wine;
import br.com.danianepg.springmvcwinelog.repositories.CountryRepository;
import br.com.danianepg.springmvcwinelog.repositories.WineRepository;

@Controller
@RequestMapping("/winelog")
public class WineLogController {
	
	@Autowired
	private WineRepository wineRepository;
	
	@Autowired
	private CountryRepository countryRepository;
	
	@RequestMapping(value = "/addupdate", method = RequestMethod.GET)
	public String addUpdate(Model model, @RequestParam(value = "id", required = false) String id ) {
		
		String route = "winelog.create.tiles";
		
		if(id != null && !id.isEmpty()) {
			
			model.addAttribute("formAction", "/winelog/update");
			model.addAttribute("title", "Create Winelog");
			
			Wine wine = wineRepository.findById(id);
			model.addAttribute("wine", wine);	
			route = "winelog.update.tiles";
			
		} else {
		
			model.addAttribute("title", "Update Winelog");
			model.addAttribute("wine", new Wine());		
			model.addAttribute("formAction", "/winelog/add");
			
		}
		
		model.addAttribute("countries", countryRepository.findAllByOrderByNameAsc());

		return route;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("wine") @Valid Wine wine, BindingResult result, Model model){
		
		if(result.hasErrors()) {
			//model.addAttribute("title", "Create Winelog");
			return "winelog.create.tiles";
		}
		
		wineRepository.save(wine);		
		return "redirect:/winelog/list";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute("wine") @Valid Wine wine, BindingResult result, Model model){
		
		if(result.hasErrors()) {
			return "winelog.update.tiles";
		}

		wineRepository.save(wine);		
		return "redirect:/winelog/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		
		List<Wine> wineList = wineRepository.findAll();
		model.addAttribute("wineList", wineList);		

		model.addAttribute("actionEdit", "/winelog/addupdate");
		model.addAttribute("actionDelete", "/winelog/delete");
		
		
		return "winelog.list.tiles";
	}
	
	@RequestMapping(value="/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		
		Wine wine = wineRepository.findById(id);
		wineRepository.delete(wine);
		
		return "redirect:/winelog/list";
	}
	
	@RequestMapping(value = "/charts", method = RequestMethod.GET)
	public String charts(Model model) {
		return "winelog.charts.tiles";
	}
	

}
