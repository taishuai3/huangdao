package ppms.action;

import java.io.File;
import java.io.InputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import ppms.daoimpl.BaseDaoImp;
import ppms.domain.TbInnovation;
import ppms.excel.CommonExcelParser;
import ppms.excel.template.IExcelTemp;
import ppms.exception.ExcelParserException;
import ppms.serviceimpl.InvocationServiceImp;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class FileAction extends ActionSupport {

	private File file;
	private String fileFileName;
	private String expect;
	
	@Autowired
	private InvocationServiceImp service;
	
	@Autowired
	@Qualifier("baseDaoImp")
	private BaseDaoImp dao;
 	
	public String getExpect() {
		return expect;
	}


	public void setExpect(String expect) {
		this.expect = expect;
	}


	public File getFile() {
		return file;
	}


	public void setFile(File file) {
		this.file = file;
	}


	public String getFileFileName() {
		return fileFileName;
	}


	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}


	@org.apache.struts2.convention.annotation.Action("/upload")
	public String upload() {

		// 基于myFile创建一个文件输入流
		try {

			if (!fileFileName.endsWith(".xls")) {
				throw new ExcelParserException("文件导入失败，文件名" + fileFileName
						+ "不符合，请导入.xls格式文件");
			} else {

				
				List<Object> objs = new CommonExcelParser(dao).toObjs2(file,
						fileFileName);
				for (Object obj : objs) {
					
					dao.saveObject(obj);
					
					System.out.println(obj.toString());
				}

				System.out.println(fileFileName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return Action.SUCCESS;
	}
}
