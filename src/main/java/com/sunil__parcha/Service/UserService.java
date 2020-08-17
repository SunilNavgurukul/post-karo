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

	public UserDetails genralupdate(UserDetails user, int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetails.setFirstname(user.getFirstname());
		userDetails.setLastname(user.getLastname());
		userDetails.setUserPhoto(user.getUserPhoto());
		userDetails.setPhone(user.getPhone());
		return userDetailsRepo.save(userDetails);
	}
	public UserDetails addressupdate(UserDetails user, int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetails.setPin(user.getPin());
		userDetails.setAdress(user.getAdress());
		userDetails.setCity(user.getCity());
		return userDetailsRepo.save(userDetails);
	}
	public UserDetails adisional(UserDetails user, int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetails.setLanguage(user.getLanguage());
		userDetails.setEmail(user.getEmail());
		userDetails.setGender(user.getGender());
		userDetails.setRelation(user.getRelation());
		return userDetailsRepo.save(userDetails);
	}
	
	public UserDetails updatepassword(UserDetails user, int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetails.setPassword(user.getPassword());
		return userDetailsRepo.save(userDetails);
	}
	
	public UserDetails updateuserdetails(int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
//		userDetails.setFirstname(user.getFirstname());
//		userDetails.setLastname(user.getLastname());
//		userDetails.setUserPhoto(user.getUserPhoto());
//		userDetails.setPhone(user.getPhone());
//		userDetails.setLanguage(user.getLanguage());
//		userDetails.setEmail(user.getEmail());
//		userDetails.setGender(user.getGender());
//		userDetails.setRelation(user.getRelation());
//		userDetails.setPin(user.getPin());
//		userDetails.setAdress(user.getAdress());
//		userDetails.setCity(user.getCity());
//		userDetails.setPassword(user.getPassword());
		return userDetailsRepo.save(userDetails);
	}

	public void delete(int id) {
		UserDetails userDetails = userDetailsRepo.findById(id).get();
		userDetailsRepo.delete(userDetails);
	}
	

}
