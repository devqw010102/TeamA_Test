package kr.hcnc.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.hcnc.service.DormitoriesService;

@Controller
public class MainController {
	
	@Resource(name = "dormitoriesService")
	private DormitoriesService dormitoriesService;
	
	@RequestMapping(value = "/main.do")
	public String mainPage() {
		
		System.out.println("MainController :: /main.do");
//		HashMap<String, Object> list = dormitoriesService.selectTest();
		
//		List<Map<String, Object>> list = dormitoriesService.selectTest();
//		
//		for(Map<String, Object> map : list) {
//			System.out.println(map);
//		}
//		
		System.out.println("Exit For state");
		
		return "main/main";
	}
	
}
