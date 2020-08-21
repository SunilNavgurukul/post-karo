package com.sunil__parcha.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunil__parcha.Modal.UserDetails;
import com.sunil__parcha.repository.UserDetailsRepo;

@Service
public class UserService {

	@Autowired
	private UserDetailsRepo userDetailsRepo;

	public UserDetails add(UserDetails user) {
		return userDetailsRepo.save(user);
	}

	public List<UserDetails> findAll() {
		return userDetailsRepo.findAll();
	}


	public UserDetails updatepassword(UserDetails user, int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetails.setPassword(user.getPassword());
		return userDetailsRepo.save(userDetails);
	}

	public UserDetails updateuserdetails(int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		return userDetailsRepo.save(userDetails);
	}
	public UserDetails updateloginuserdetails(String name) {
		UserDetails userDetails = userDetailsRepo.findByFirstname(name);
		return userDetailsRepo.save(userDetails);
	}

	public void delete(int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetailsRepo.delete(userDetails);
	}

}
