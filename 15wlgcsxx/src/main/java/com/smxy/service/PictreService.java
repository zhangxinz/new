package com.smxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smxy.bean.Pictre;
import com.smxy.dao.PictreMapper;

@Service
public class PictreService {

	@Autowired
	PictreMapper pictreMapper;
	/**
	 * 查询所有的图片
	 * @return
	 */ 
	public List<Pictre> selectLikePic(Pictre pic){
		
		return pictreMapper.selectLikePic(pic);
	}
	public List<Pictre> getAll() {
		// TODO Auto-generated method stub
		return pictreMapper.selectByExample(null);
	}
	
	/**
	 * 按类别查询图片
	 */
	//fire
	public List<Pictre> getFire(){
		return pictreMapper.selectByfire();
				
	}
	//child 
	public List<Pictre> getChild(){
		return pictreMapper.selectBychild();
	}
	//older
	public List<Pictre> getOlder(){
		return pictreMapper.selectByolder();
	}
	//thief
	public List<Pictre> getThief(){
		return pictreMapper.selectBythief();
	}
	//deleatpic
	public void deletepic(){
		pictreMapper.deletepic();
	}

	//deleatpicAll
	public void deletepicAll(int[] ids){
		pictreMapper.deleteAll(ids);
	}
}
