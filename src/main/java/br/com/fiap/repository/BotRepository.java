package br.com.fiap.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.fiap.model.BotModel;

@Repository
public interface BotRepository extends JpaRepository<BotModel, Long>{
	
}
