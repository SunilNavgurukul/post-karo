package com.sunil__parcha.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sunil__parcha.Modal.UserDetails;

public interface UserDetailsRepo extends JpaRepository<UserDetails, Integer> {

	UserDetails findByFirstname(String useString);
}
