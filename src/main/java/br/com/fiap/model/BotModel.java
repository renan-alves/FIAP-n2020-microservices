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
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_BOT")
public class BotModel {

	private long id_bot;
	private String name;
	private String welcome_msg;
	private String farewell_msg;
	private int downtime;
	private String default_answer;
	
	private List<SegmentModel> segment;
	private String[] listOfNames;

	public BotModel() {
	}

	public BotModel(long id_bot, String name, String welcome_msg, String farewell_msg, int downtime,
					String default_answer, List<SegmentModel> segment, String[] listOfNames) {
		this.id_bot = id_bot;
		this.name = name;
		this.welcome_msg = welcome_msg;
		this.farewell_msg = farewell_msg;
		this.downtime = downtime;
		this.default_answer = default_answer;
		this.segment = segment;
		this.listOfNames = listOfNames;
	}

	@Id
	@Column(name = "ID_BOT")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "BOT_SEQ")
	@SequenceGenerator(name = "BOT_SEQ", sequenceName = "BOT_SEQ", allocationSize = 1)
	public long getId_bot() {
		return id_bot;
	}

	public void setId_bot(long id_bot) {
		this.id_bot = id_bot;
	}

	@NotNull
	@Size(min=1, max=255)
	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@NotNull
	@Size(min=1, max=255)
	@Column(name = "WELCOME_MSG")
	public String getWelcome_msg() {
		return welcome_msg;
	}

	public void setWelcome_msg(String welcome_msg) {
		this.welcome_msg = welcome_msg;
	}

	@NotNull
	@Size(min=1, max=255)
	@Column(name = "FAREWELL_MSG")
	public String getFarewell_msg() {
		return farewell_msg;
	}

	public void setFarewell_msg(String farewell_msg) {
		this.farewell_msg = farewell_msg;
	}

	@NotNull
	@Min(1)
	@Column(name = "DOWNTIME")
	public int getDowntime() {
		return downtime;
	}

	public void setDowntime(int downtime) {
		this.downtime = downtime;
	}

	@NotNull
	@Size(min=1, max=255)
	@Column(name = "DEFAULT_ANSWER")
	public String getDefault_answer() {
		return default_answer;
	}

	public void setDefault_answer(String default_answer) {
		this.default_answer = default_answer;
	}
	
	@OneToMany(mappedBy = "tb_bot")
	public List<SegmentModel> getSegment() {
		return segment;
	}

	public void setSegment(List<SegmentModel> segment) {
		this.segment = segment;
	}

	@Transient
	public String[] getListOfNames() {
		return listOfNames;
	}

	public void setListOfNames(String[] listOfNames) {
		this.listOfNames = listOfNames;
	}
}
