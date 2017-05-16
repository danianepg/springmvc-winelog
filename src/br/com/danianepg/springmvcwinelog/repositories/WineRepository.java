package br.com.danianepg.springmvcwinelog.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import br.com.danianepg.springmvcwinelog.domain.Wine;

public interface WineRepository extends MongoRepository<Wine, String> {

	Wine findById(String id);
}
