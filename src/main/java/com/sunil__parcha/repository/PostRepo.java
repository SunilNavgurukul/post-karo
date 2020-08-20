package com.sunil__parcha.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sunil__parcha.Modal.Post;

public interface PostRepo extends JpaRepository<Post, Integer> {

	List<Post> findAllByOrderByIdDesc();

}
