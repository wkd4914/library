package com.ict.book.controller;
 import java.util.List;
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
 	
 	@RequestMapping(value="/libraryinfo/{lino}",method=RequestMethod.GET)
 	public @ResponseBody LibraryInfo getLevelInfo(@PathVariable Integer lino) {	//{linum} 을 @pathvar.. 에다가 넣어준다.
 		return lis.getLibraryInfoList(lino);
 	}
 	
 	
 	@RequestMapping(value="/libraryinfo",method=RequestMethod.POST)
 	public @ResponseBody Integer insertLevelInfo(@RequestBody LibraryInfo li) {
		return lis.insertLibraryInfo(li);
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