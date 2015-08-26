package ppms.serviceimpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.resource.spi.AuthenticationMechanism;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ppms.domain.TbRole;
import ppms.domain.TbSystemfunction;
import ppms.genericDao.TbRoleDAO;
import ppms.genericDao.TbSystemfunctionDAO;
import ppms.service.AuthorityService;
import ppms.util.ToJsonUtil;

/**
* <p>Title: AuthoritySrviceImp</p>
* <p>Description: </p>
* <p>Company:（c）版权所有 2015 NCHU.QQL</p> 
* <p>Version:</p>
* @author TyurinTsien
* @date 2015-8-12下午3:36:04
*/
@Service
public class AuthoritySrviceImp implements AuthorityService{

	//角色dao
	@Autowired
	private TbRoleDAO roleDAO;
	//系统功能dao
	@Autowired
	private TbSystemfunctionDAO systemfunctionDAO;
	
	@Override
	public List<TbRole> findAllRole() {
		// 查询所有角色List
		List<TbRole> tbRoles = roleDAO.findAll();
		return tbRoles;
	}

	@Override
	public String findSystemFunctionJson(String[] column) {
		// 得到系统功能json
		ToJsonUtil toJsonUtil = new ToJsonUtil();
		Map<String, List<TbSystemfunction>> map = new HashMap<String, List<TbSystemfunction>>();
		map.put("TbSystemfunctions", this.findAllSystemfunctions());
		toJsonUtil.setFieldToJson(column);
		String resultString = "{\"ppms\":" + toJsonUtil.toJson(map, roleDAO) + "}";
		return resultString;
	}

	@Override
	public List<TbSystemfunction> findAllSystemfunctions() {
		// 查询系统功能list
		List<TbSystemfunction> tbSystemfunctions = new ArrayList<TbSystemfunction>();
		tbSystemfunctions = systemfunctionDAO.findAll();
		return tbSystemfunctions;
	}

}