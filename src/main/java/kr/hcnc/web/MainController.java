package kr.hcnc.web;
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
		return "main/main";
	}
	// 버튼 1
	@RequestMapping(value = "/badge.do")
	public String badgePage() {
		System.out.println("MainController :: /badge.do");
		return "badge/badgePage";
	}
	
	// 버튼 2 (보변적 시설 및 정보 안내)
	@RequestMapping(value = "/facility.do")
	public String facilityPage() {
		System.out.println("MainController :: /facility.do");
		return "facility/facilityPage";
	}
	
	// 버튼 2 (구내식당 및 위치 정보)
	@RequestMapping(value = "/facility/cafeteria.do")
	public String cafeteriaPage() {
		System.out.println("MainController :: /facility/cafeteria.do");
		return "facility/cafeteriaPage";
	}
	
	// 버튼 2 (흡연장소 위치 정보)
	@RequestMapping(value = "/facility/smoking.do")
	public String smokingPage() {
		System.out.println("MainController :: /facility/somking.do");
		return "facility/smokingPage";
	}
	
	// 버튼 2 (강의실 위치 정보)
	@RequestMapping(value = "/facility/classroom.do")
	public String classroomPage() {
		System.out.println("MainController :: /facility/classroom.do");
		return "facility/classroomPage";
	}	
	
	// 버튼 2 (교통 정보)
	@RequestMapping(value = "facility/transport.do")
	public String transportPage() {
		System.out.println("MainController :: /facility/transport.do");
		return "facility/transportPage";
	}	
}	