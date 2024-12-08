package com.klef.jfsd.springbootproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springbootproject.model.Admin;
import com.klef.jfsd.springbootproject.model.Mentor;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long>{
	@Query("select a from Admin a where a.ausername=?1 and a.apassword=?2 ")
	public Admin checkAdminLoginByUsername(String ausername, String apassword);
	
	@Query("select a from Admin a where a.aemail=?1 and a.apassword=?2 ")
	public Admin checkAdminLoginByEmail(String aemail, String apassword);

}
