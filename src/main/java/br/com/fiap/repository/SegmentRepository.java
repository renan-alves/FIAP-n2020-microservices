package br.com.fiap.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import br.com.fiap.model.SegmentModel;

@Repository
public interface SegmentRepository extends JpaRepository<SegmentModel, Long>{
	
	@Query(value = "SELECT DISTINCT NAME FROM TB_SEGMENT", nativeQuery = true)
	public List<String> findDistinctNames();
	
	@Query(value = "SELECT NAME FROM TB_SEGMENT WHERE TB_BOT = ?1", nativeQuery = true)
	public List<SegmentModel> findTB_BOT(Long tb_bot);
	
	@Query(value = "DELETE FROM TB_SEGMENT WHERE TB_BOT = ?1 and NAME not in ?2", nativeQuery = true)
	void clearSegments(long tb_bot, List<String> names);
	
	@Query(value = "DELETE FROM tb_SEGMENT WHERE TB_BOT = ?1", nativeQuery = true)
	void deleteAllSegments(long tb_bot);
}