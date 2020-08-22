package com.sunil__parcha.Controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sunil__parcha.Modal.Post;
import com.sunil__parcha.Service.PostService;
import com.sunil__parcha.repository.UserDetailsRepo;

@Controller
@RequestMapping("/post")
public class PostController {

	@Autowired
	private PostService postService;
	
	@Autowired
	private UserDetailsRepo userRepo;
		

	@GetMapping(value = "/all-upload")
	public ModelAndView findAll() {
		ModelAndView userModel = new ModelAndView("posts");
		userModel.addObject("userList", postService.findAll());
		return userModel;
	}

	@GetMapping(value = "/add")
	public ModelAndView add() {
		ModelAndView userModel = new ModelAndView("addpost");
		userModel.addObject("userPost", new Post());
		return userModel;

	}
	@GetMapping(value = "/update/{id}")
	public ModelAndView updateuserdetails(@PathVariable("id") int id) {
		ModelAndView userModel = new ModelAndView("addpost");
		userModel.addObject("userPost", postService.Captionupdate(id));
		return userModel;
	}


	@PostMapping(value = "/add-post")
	public String Userpost(@ModelAttribute("userPost") Post user, Principal principal) {
		String name = principal.getName();
		postService.add(user, name);
		return "redirect:/post/my-own-post";
	}
	
	@GetMapping(value = "/my-own-post")
	public ModelAndView ownPost(Principal principal) {
		String name = principal.getName();
		ModelAndView userModel = new ModelAndView("myPosts");
		userModel.addObject("userList", postService.getOwnData(userRepo.findByFirstname(name).getId()));
		return userModel;
	}
	
	@GetMapping(value = "/like/{id}")
	public String Like(@ModelAttribute("userPost") Post user, @PathVariable("id") int id) {
		postService.likes(user, id);
		return "redirect:";
	}
	
//	@GetMapping(value = "/delete-post/{id}")
//	public String DeletePost(@PathVariable("id") int id) {
//		postService.DeletePost(id);
//		return "redirect:/post/my-own-post";
//	}

}
