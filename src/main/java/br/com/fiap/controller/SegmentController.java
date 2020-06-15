package br.com.fiap.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fiap.model.BotModel;
import br.com.fiap.repository.SegmentRepository;

@Controller
@RequestMapping("/segment")
public class SegmentController {
	
static final String FOLDER = "segment/";	
	
	@Autowired
	public SegmentRepository segmentRepository;
	
	
	@GetMapping("/{id}")
	public String findAll(@PathVariable("id") long id, Model model) {
		model.addAttribute("listaSegmentos", segmentRepository.findAll());
		model.addAttribute("botId", id);
		
		return FOLDER+"segment";
	}

	@PostMapping()
	public String save(@Valid BotModel botModel, BindingResult bindingResult) {
		
//		if(bindingResult.hasErrors()) {
//			return FOLDER+"novo-robo";
//		}
//				
//		BotModel saved = botRepository.save(botModel);
		
		return "redirect:/segment/";
	}
}
