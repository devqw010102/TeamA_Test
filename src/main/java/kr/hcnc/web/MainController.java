package kr.hcnc.web;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import kr.hcnc.service.DormitoriesService;
import kr.hcnc.service.FacilityService;

@Controller
public class MainController {
	
	@Resource(name = "dormitoriesService")
	private DormitoriesService dormitoriesService;
	
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