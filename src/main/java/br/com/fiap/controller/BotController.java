package br.com.fiap.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.BotModel;
import br.com.fiap.model.SegmentModel;
import br.com.fiap.repository.BotRepository;
import br.com.fiap.repository.SegmentRepository;

@Controller
@RequestMapping("/bot")
public class BotController {
	
	static final String FOLDER = "bot/";
	
	@Autowired
	public BotRepository botRepository;
	
	@Autowired
	public SegmentRepository segmentRepository;

//	lista tudo
	@GetMapping()
	public String findAll(Model model) {
		model.addAttribute("listaBots", botRepository.findAll());
		return FOLDER+"bot";
	}
	
//	detalhes
	@GetMapping("/{id}")
	public String findById(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("bot", botRepository.findById(id).get());
		return FOLDER+"detalhes";
	}
	
//
	@GetMapping("/form")
	public String open(@RequestParam String page, 
					   @RequestParam(required = false) Long id,
					   @ModelAttribute("botModel") BotModel botModel, 
					   Model model) {
		
		if("novo-robo".equals(page) || "editar".equals(page)) {
			model.addAttribute("segmentos", segmentRepository.findDistinctNames());
		}
		if("editar".equals(page)) {
			model.addAttribute("botModel", botRepository.findById(id).get());
		}
		return FOLDER+page;
	}
	
//	novo
	@PostMapping()
	public String save(@Valid BotModel botModel, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {
		
		if (bindingResult.hasErrors()) {
			model.addAttribute("segmentos", segmentRepository.findDistinctNames());
			return FOLDER+"novo-robo";
		}
		
		BotModel save = botRepository.save(botModel);
		
		for (String it : botModel.getListOfNames()) {
			segmentRepository.save(new SegmentModel(0, it, save));
		}
		
		redirectAttributes.addFlashAttribute("messages", "Robô criado com sucesso!");
			
		return "redirect:/bot";
	}
	
//	editar
	@PutMapping("/{id}")
	public String update(@PathVariable("id") long id, @Valid BotModel botModel, BindingResult bindingResult, Model model, RedirectAttributes redirectAttributes) {
		
		if (bindingResult.hasErrors()) {
			botModel.setId_bot(id);
			model.addAttribute("segmentos", segmentRepository.findDistinctNames());
			model.addAttribute("botModel", botModel);
			return FOLDER+"editar";
		}
		
		List<SegmentModel> segments = new ArrayList<SegmentModel>();
		List<String> names = new ArrayList<String>();
		List<Exception> exception = new ArrayList<Exception>();
		
		for (String it : botModel.getListOfNames()) {
			segments.add(new SegmentModel(0, it, botModel));
			names.add(it);
		}
		
		try {
			segmentRepository.deleteAllSegments(id);
		}catch (Exception e) {
			exception.add(e);
		}
		
		botModel.setId_bot(id);
		botRepository.save(botModel);
		
		segmentRepository.saveAll(segments);
		
		redirectAttributes.addFlashAttribute("messages", "Robô alterado com sucesso!");
		
		return "redirect:/bot";
	}
	
//	excluir
	@DeleteMapping("/{id}")
	public String delete(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		List<Exception> exception = new ArrayList<Exception>();
		
		try {
			segmentRepository.deleteAllSegments(id);
		}catch (Exception e) {
			exception.add(e);
		}
		botRepository.deleteById(id);
		
		redirectAttributes.addFlashAttribute("messages", "Robô excluído com sucesso!");
		
		return "redirect:/bot";
	}
}
