package kr.hcnc.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.hcnc.util.ApiClient;

@Service("badgeService")
public class BadgeService extends EgovAbstractServiceImpl {

	@Resource(name = "apiClient")
	private ApiClient apiClient;

	
	public List<Map<String, Object>> selectStudents(String param) {
		System.out.println("BadgeService :: selectStudents()");
		
		return apiClient.get(
				"/api/student/search?param=" + param, 
				List.class
				);
	}
}
