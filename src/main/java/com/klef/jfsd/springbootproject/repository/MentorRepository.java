package com.klef.jfsd.springbootproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springbootproject.model.Mentor;

@Repository
public interface MentorRepository extends JpaRepository<Mentor, Long>{
	@Query("select m from Mentor m where m.musername=?1 and m.mpassword=?2 ")
	public Mentor checkMentorLoginByUsername(String musername, String mpassword);
	
	@Query("select m from Mentor m where m.memail=?1 and m.mpassword=?2 ")
	public Mentor checkMentorLoginByEmail(String memail, String mpassword);


}
