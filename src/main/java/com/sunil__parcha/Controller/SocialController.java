package com.sunil__parcha.Controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sunil__parcha.Modal.UserDetails;
import com.sunil__parcha.Service.UserService;


@Controller
@RequestMapping("/user")
public class SocialController {

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Autowired
	private UserService userService;

	@GetMapping(value = "/all-account")
	public ModelAndView findAll() throws UnsupportedEncodingException {
		ModelAndView userModel = new ModelAndView("accounts");
		userModel.addObject("userList", userService.findAll());
		return userModel;
	}

	@GetMapping(value = "/add")
	public ModelAndView add() {
		ModelAndView userModel = new ModelAndView("form");
		userModel.addObject("userForm", new UserDetails());
		return userModel;
	}

	@GetMapping(value = "/update/{id}")
	public ModelAndView updateuserdetails(@PathVariable("id") int id) {
		ModelAndView userModel = new ModelAndView("form");
		userModel.addObject("userForm", userService.updateuserdetails(id));
		return userModel;
	}

	@GetMapping(value = "/update")
	public ModelAndView updateloginuserdetails(Principal principal) {
		String name = principal.getName();
		ModelAndView userModel = new ModelAndView("form");
		userModel.addObject("userForm", userService.updateloginuserdetails(name));
		return userModel;
	}

	@PostMapping(value = "/add-account")
	public String postUserDetails(@ModelAttribute("userForm") UserDetails user) throws IOException {
		if(!user.getPassword().contains("$2a$10")) {
			String encodedPassword = bCryptPasswordEncoder.encode(user.getPassword());
			user.setPassword(encodedPassword);
		}
		userService.add(user);
		return "redirect:all-account";
	}

	@PutMapping(value = "/update-password/{id}")
	public UserDetails updatepassword(@RequestBody UserDetails user, @PathVariable("id") int id) {
		return userService.updatepassword(user, id);
	}

	@GetMapping(value = "/delete/{id}")
	public String deletedata(@PathVariable("id") int id) {
		userService.delete(id);
		return "redirect:/user/all-account";
	}
}
