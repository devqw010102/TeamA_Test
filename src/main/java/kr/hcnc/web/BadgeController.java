package kr.hcnc.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.hcnc.service.BadgeService;

@Controller
public class BadgeController {

	@Resource(name = "badgeService")
	private BadgeService badgeService;
	
	@RequestMapping(value = "/count.do")
	@ResponseBody
	public String selectCount() {
		System.out.println("BadgeController :: /count.do");
		String result = badgeService.selectCount();
		System.out.println("BadgeController :: result = " + result);
		return result;
	}
	
	@RequestMapping(value = "/searchStudent.do")
	@ResponseBody
	public List<Map<String, Object>> selectStudent(String param) {
		System.out.println("BadgeController :: /searchStudent.do");
		List<Map<String, Object>> list = badgeService.selectStudents(param);
		System.out.println("BadgeController :: list = " + list);
		return list;
	}
}
