package com.ict.book.controller;
 import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ict.book.service.LibraryInfoService;
import com.ict.book.vo.LibraryInfo;
 
@Controller
public class LibraryInfoController {
 	
	
	@Autowired
	private LibraryInfoService lis;
 	
 	
 	@RequestMapping(value="/libraryinfo",method=RequestMethod.GET)  
 	public @ResponseBody List<LibraryInfo> getLevelInfoList(@ModelAttribute LibraryInfo li){	//@ form 
 		return lis.getLibraryInfoList(li);
	}
	@RequestMapping(value="/libraryinfo2",method=RequestMethod.GET)  
 	public String getLevelInfoList2(@ModelAttribute LibraryInfo li2){	//@ form 
 		return "library/list";
	}
 	
 	@RequestMapping(value="/libraryinfo/{lino}",method=RequestMethod.GET)
 	public @ResponseBody LibraryInfo getLevelInfo(@PathVariable Integer lino) {	//{linum} 을 @pathvar.. 에다가 넣어준다.
 		return lis.getLibraryInfoList(lino);
 	}
 	
 	
 	@RequestMapping(value="/libraryinfo",method=RequestMethod.POST)
 	public @ResponseBody Integer insertLevelInfo(@RequestBody LibraryInfo li) {
		return lis.insertLibraryInfo(li);
	}
 	
 	@RequestMapping(value="/libraryinfoTest",method=RequestMethod.POST)
 	public @ResponseBody Integer fileTest(HttpServletRequest request) {
 		String tmpPath = System.getProperty("java.io.tmpdir");
 		File tmpDir = new File(tmpPath);
 		DiskFileItemFactory dFactory = new DiskFileItemFactory();

 		dFactory.setRepository(tmpDir);
 		dFactory.setSizeThreshold(1024*1024*10);

 		ServletFileUpload sfu = new ServletFileUpload();
 		sfu.setFileItemFactory(dFactory);
 		sfu.setFileSizeMax(1024*1024*100);

 		sfu.setSizeMax(1024*1024*200);


 		List<FileItem> fList;
		try {
			fList = sfu.parseRequest(request);
			System.out.println(fList);
			String savePath = "C:/jsp_study/workspace/library/src/main/webapp/resources/upload";
			Map<String,String> pMap = new HashMap<String,String>();
			
			for(int i=0;i<fList.size();i++){
				FileItem fi = fList.get(i);
				if(fi.isFormField()){
					String name = fi.getFieldName();
					String value = fi.getString("utf-8");
					pMap.put(name, value);
				}else{
					String name = fi.getFieldName();
					String value = fi.getName();
					if(value.equals("")) continue;
					savePath = savePath + File.separator + value;
					File save = new File(savePath);
					fi.write(save);
					pMap.put(name, value);
				}
			}
			
			System.out.println(pMap);
			
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
 		return 1;
 	}
 	
 	
 	@RequestMapping(value="/libraryinfo/{lino}",method=RequestMethod.PUT)
	@ResponseBody 
	public Integer updateLevelInfoList(@RequestBody LibraryInfo li, @PathVariable Integer lino) {
		li.setLino(lino);
		return lis.updateLibraryInfo(li);
	}
 	
 	
 	@RequestMapping(value="/libraryinfo/{lino}",method=RequestMethod.DELETE)
	@ResponseBody 
	public String deleteLevelInfoList(@PathVariable int lino) {
		return lis.deleteLibraryInfo(lino)+""; 
	}
 	
 
 	@RequestMapping(value="/libraryinfos",method=RequestMethod.PUT)
	@ResponseBody
	public Integer deleteLevelInfoList(@RequestBody List<LibraryInfo> delList) {
 		System.out.println(delList);
 		return delList.size();
 	}
}