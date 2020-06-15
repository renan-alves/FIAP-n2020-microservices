package br.com.fiap.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "TB_SEGMENT")
public class SegmentModel {
	
	private long id_segment;
	private String name;
	private BotModel tb_bot;
	
	public SegmentModel() {}

	
	public SegmentModel(long id_segment, String name, BotModel tb_bot) {
		this.id_segment = id_segment;
		this.name = name;
		this.tb_bot = tb_bot;
	}

	@Id
	@Column(name = "ID_SEGMENT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "SEGMENT_SEQ")
	@SequenceGenerator(name = "SEGMENT_SEQ", sequenceName = "SEGMENT_SEQ", allocationSize = 1)
	public long getId_segment() {
		return id_segment;
	}

	public void setId_segment(long id_segment) {
		this.id_segment = id_segment;
	}

	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToOne
	@JoinColumn(name="TB_BOT", referencedColumnName="ID_BOT")
	public BotModel getTb_bot() {
		return tb_bot;
	}

	public void setTb_bot(BotModel tb_bot) {
		this.tb_bot = tb_bot;
	}
}
