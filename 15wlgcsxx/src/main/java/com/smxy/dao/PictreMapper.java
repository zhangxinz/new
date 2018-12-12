package com.smxy.dao;

import com.smxy.bean.Pictre;
import com.smxy.bean.PictreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PictreMapper {
    long countByExample(PictreExample example);

    int deleteByExample(PictreExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Pictre record);

    int insertSelective(Pictre record);

    List<Pictre> selectByExample(PictreExample example);

    Pictre selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Pictre record, @Param("example") PictreExample example);

    int updateByExample(@Param("record") Pictre record, @Param("example") PictreExample example);

    int updateByPrimaryKeySelective(Pictre record);

    int updateByPrimaryKey(Pictre record);
    
    List<Pictre> selectByfire();
    
    List<Pictre> selectBychild();
    
    List<Pictre> selectBythief();
    
    List<Pictre> selectByolder();
    
    void deletepic();
    void deleteAll(int[] ids);
    List<Pictre> selectLikePic(Pictre pic);
}