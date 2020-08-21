package com.sunil__parcha.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.sunil__parcha.Modal.Post;

public interface PostRepo extends JpaRepository<Post, Integer> {

	List<Post> findAllByOrderByIdDesc();
	
	@Query(value = "select * from post p inner join user_posted up where p.id = up.post_id and up.user_id = :id", nativeQuery = true)
	List<Object[]> getOwnData(int id);
}
