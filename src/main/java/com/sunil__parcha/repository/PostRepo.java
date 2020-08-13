package com.sunil__parcha.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sunil__parcha.Modal.Post;

public interface PostRepo extends JpaRepository<Post, Integer> {

}
