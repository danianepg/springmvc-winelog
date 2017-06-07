package br.com.danianepg.springmvcwinelog.repositories;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import br.com.danianepg.springmvcwinelog.domain.Country;

public interface CountryRepository extends MongoRepository<Country, String>{
	
	public List<Country> findAllByOrderByNameAsc();

}
