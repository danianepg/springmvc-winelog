package br.com.danianepg.springmvcwinelog.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.danianepg.springmvcwinelog.repositories.CountryRepository;
import br.com.danianepg.springmvcwinelog.util.InitDataUtil;

@Controller
@RequestMapping("/")
public class HelloController {

	@Autowired
	private CountryRepository countryRepository;

	@RequestMapping("/")
	public String index() {

		InitDataUtil initData = new InitDataUtil(countryRepository);
		initData.countryInitData();

		return "index.tiles";
	}

}
