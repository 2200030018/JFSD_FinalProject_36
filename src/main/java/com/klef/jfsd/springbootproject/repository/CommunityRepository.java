package com.klef.jfsd.springbootproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springbootproject.model.Community;

@Repository
public interface CommunityRepository extends JpaRepository<Community, Long>{
	

}
