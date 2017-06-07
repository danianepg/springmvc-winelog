package br.com.danianepg.springmvcwinelog.util;

import java.util.List;
import java.util.Locale;

import br.com.danianepg.springmvcwinelog.domain.Country;
import br.com.danianepg.springmvcwinelog.repositories.CountryRepository;

public class InitDataUtil {

	private CountryRepository countryRepository;

	public InitDataUtil(CountryRepository countryRepository) {
		this.countryRepository = countryRepository;
	}

	public void countryInitData() {

		List<Country> countries = countryRepository.findAll();

		if (countries == null || countries.isEmpty()) {

			System.out.println("Loading country data");
			String[] locales = Locale.getISOCountries();

			for (String countryCode : locales) {
				Locale obj = new Locale("", countryCode);
				Country country = new Country(obj.getCountry(), obj.getDisplayCountry());
				countryRepository.insert(country);
			}

			System.out.println("Finished loading country data");
		}

	}

}
