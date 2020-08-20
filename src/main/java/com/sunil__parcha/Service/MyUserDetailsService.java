package com.sunil__parcha.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.UserDetails;

import com.sunil__parcha.config.UserPrinciPal;
import com.sunil__parcha.repository.UserDetailsRepo;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserDetailsRepo userDetailsRepo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		com.sunil__parcha.Modal.UserDetails userDetails = userDetailsRepo.findByFirstname(username);
		if (userDetails == null)
			throw new UsernameNotFoundException("User not found 404");

		return new UserPrinciPal(userDetails);
	}

}
