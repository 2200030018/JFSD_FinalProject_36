package com.klef.jfsd.springbootproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springbootproject.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{
	
	@Query("select s from Student s where s.susername=?1 and s.spassword=?2 ")
	public Student checkStudentLoginByUsername(String susername, String spassword);
	
	@Query("select s from Student s where s.semail=?1 and s.spassword=?2 ")
	public Student checkStudentLoginByEmail(String semail, String spassword);
	
	@Query("select s from Student s where s.sid=?1")
	public Student viewStudentById(long sid);

}
