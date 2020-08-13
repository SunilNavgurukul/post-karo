package com.sunil__parcha.Controller;



import java.io.IOException;
import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
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
	
	@Value("${uploadDir}")
	private String uploadFolder;
	
	
	@Autowired
	private UserService userService;

	@GetMapping(value = "/all-account")
	public ModelAndView findAll() throws UnsupportedEncodingException {
		ModelAndView userModel=new ModelAndView("all_accout");
//		byte[] encodeBase64 = Base64.encodeBase64(userService.findAll().get(0).getUserPhoto());
//		String base64DataString = new String(encodeBase64 , "UTF-8");
		userModel.addObject("userList", userService.findAll());

		return userModel;
	}

	@GetMapping(value="/add")
	public ModelAndView add() {	
		ModelAndView userModel=new ModelAndView("form");
		userModel.addObject("userForm", new UserDetails());
		return userModel;
	}
	
	@PostMapping(value = "/add-account")
	public String postUserDetails(@ModelAttribute("userForm") UserDetails user ) throws IOException {
		System.out.println(user.getUserPhoto());
		
		userService.add(user);
		return "redirect:all-account	";
	}
	
	@PutMapping(value = "/update-userdetails/{id}")
	public UserDetails updateuserdetails(@RequestBody UserDetails user, @PathVariable("id") int id) {
		return userService.updateuserdetails(user, id);
	}

	@PutMapping(value = "/update-genral/{id}")
	public UserDetails genralupdate(@RequestBody UserDetails user, @PathVariable("id") int id) {
		return userService.genralupdate(user, id);
	}
	
	@PutMapping(value = "/update-address/{id}")
	public UserDetails addressupdate(@RequestBody UserDetails user, @PathVariable("id") int id) {
		return userService.addressupdate(user, id);
	}
	
	@PutMapping(value = "/update-adisional/{id}")
	public UserDetails adisionalupdate(@RequestBody UserDetails user, @PathVariable("id") int id) {
		return userService.adisional(user, id);
	}
	
	@PutMapping(value = "/update-password/{id}")
	public UserDetails updatepassword(@RequestBody UserDetails user, @PathVariable("id") int id) {
		return userService.updatepassword(user, id);
	}
	@GetMapping(value="/delete/{id}")
	public String deletedata(@PathVariable("id") int id) {
		userService.delete(id);
		return "redirect:/user/all-account";
	}
}
