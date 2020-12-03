package com.example.demo.base.service;

import java.util.List;

import com.example.demo.base.entity.SysPermission;
import com.example.demo.base.entity.SysPermissionVo;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;


public interface SysPermissionService {
	
	
	public SysPermission findById(int id);
	    
	public List<SysPermissionVo> findAll();
	
	
	SysPermission save(SysPermission sp);
	
	int updatePermission(SysPermission sp); 
	
	
	SysPermission findByOne(String id);
	
	int delete(String id);
}