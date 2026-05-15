package kr.hcnc.web;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main.do")
	public String mainPage() {
		System.out.println("MainController :: /main.do");
		return "main/main";
	}
	
	@RequestMapping(value = "/badge.do")
	public String badgePage() {
		System.out.println("MainController :: /badge.do");
		return "badge/badgePage";
	}
}