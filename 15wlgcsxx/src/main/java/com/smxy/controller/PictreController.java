package com.smxy.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.smxy.bean.Msg;
import com.smxy.bean.Pictre;
import com.smxy.service.PictreService;


@Controller
public class PictreController {
	private static Pictre picc=new Pictre();
	@Autowired
	PictreService pictreService;
	/**
	 * 查询所有图片
	 * @return
	 */
	
	//查询所有与昂json
	@RequestMapping("/newshow")
	@ResponseBody
	public Msg getPhotoAll(Pictre pic,@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
		//传入页码，每页的大小
		PageHelper.startPage(pn,5);
		System.out.println(picc.getlTime()+"````````````````````````````````````````````````````````````");
		List<Pictre> pics =pictreService.selectLikePic(picc);
		//使用pageInfo包装后的结果，只需要将pageInfo交给页面就行了
		//封装了详细的分页信息，包括有我们查询出来的数据,窜入连续显示的页数
		PageInfo page = new PageInfo(pics,5);
		return Msg.success().add("pageInfo",page);
	}
	

	//查询火焰
	@RequestMapping("/newfire")
	@ResponseBody
	public Msg getfire(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
		//传入页码，每页的大小
		PageHelper.startPage(pn,5);
		List<Pictre> pics =pictreService.getFire();
		//使用pageInfo包装后的结果，只需要将pageInfo交给页面就行了
		//封装了详细的分页信息，包括有我们查询出来的数据,窜入连续显示的页数
		PageInfo page = new PageInfo(pics,5);
		return Msg.success().add("pageInfo",page);
	}	
	//查询older
		@RequestMapping("/newolder")
		@ResponseBody
		public Msg getolder(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
			//传入页码，每页的大小
			PageHelper.startPage(pn,5);
			List<Pictre> pics =pictreService.getOlder();
			//使用pageInfo包装后的结果，只需要将pageInfo交给页面就行了
			//封装了详细的分页信息，包括有我们查询出来的数据,窜入连续显示的页数
			PageInfo page = new PageInfo(pics,5);
			return Msg.success().add("pageInfo",page);
		}	
		//查询火焰
		@RequestMapping("/newthief")
		@ResponseBody
		public Msg getthief(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
			//传入页码，每页的大小
			PageHelper.startPage(pn,5);
			List<Pictre> pics =pictreService.getThief();
			//使用pageInfo包装后的结果，只需要将pageInfo交给页面就行了
			//封装了详细的分页信息，包括有我们查询出来的数据,窜入连续显示的页数
			PageInfo page = new PageInfo(pics,5);
			return Msg.success().add("pageInfo",page);
		}	
		//查询child
		@RequestMapping("/newchild")
		@ResponseBody
		public Msg getchild(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
			//传入页码，每页的大小
			PageHelper.startPage(pn,5);
			List<Pictre> pics =pictreService.getChild();
			//使用pageInfo包装后的结果，只需要将pageInfo交给页面就行了
			//封装了详细的分页信息，包括有我们查询出来的数据,窜入连续显示的页数
			PageInfo page = new PageInfo(pics,5);
			return Msg.success().add("pageInfo",page);
		}
		
		//批量删除
		@RequestMapping("/deleteall")
		public String getdeleat(String sub,Pictre pic,HttpServletRequest req,HttpServletResponse rep,int[] checkbox){
			if (checkbox!=null) {
				if (checkbox.length>0) {
					pictreService.deletepicAll(checkbox);
					return "pictureall";
				}
			}			
			if (sub.equals("删除")) {
				pictreService.deletepicAll(checkbox);
				return "pictureall";
			}else {
				picc.setlTime(pic.getTime());
				System.out.println("hahaaaaaa111aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahahahahahahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
				return "pictureall";
			}
			
		}
		//测试删除
		@RequestMapping("/delete")
		@ResponseBody
		public void getdeleatpic(){
			
			pictreService.deletepic();
			
		}
		
}











