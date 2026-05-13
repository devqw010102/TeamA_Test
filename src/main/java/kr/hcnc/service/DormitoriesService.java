package kr.hcnc.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.hcnc.mapper.DormitoriesMapper;

@Service("dormitoriesService")
public class DormitoriesService extends EgovAbstractServiceImpl {

	@Resource(name = "dormitoriesMapper")
	private DormitoriesMapper dormitoriesMapper;
	
	public List<Map<String, Object>> selectTest() {
		System.out.println("DormitoriesService :: selectTest()");
		List<Map<String, Object>> list = dormitoriesMapper.selectTest();
		
		return list;
	}
}
