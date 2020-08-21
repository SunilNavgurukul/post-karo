package com.sunil__parcha.Controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add() {
		ModelAndView userModel = new ModelAndView("addpost");
		userModel.addObject("userPost", new Post());
		return userModel;

	}

	@PostMapping(value = "/add-post")
	public String Userpost(@ModelAttribute("userPost") Post user, Principal principal) {
		String name = principal.getName();
		postService.add(user, name);
		return "redirect:all-upload";
	}

	@PutMapping(value = "/update-caption/{id}")
	public Post UpdatePost(@RequestBody Post user, @PathVariable("id") int id) {
		return postService.Captionupdate(user, id);
	}
	@GetMapping(value = "/my-own-post")
	public ModelAndView ownPost(Principal principal) {
		String name = principal.getName();
		ModelAndView userModel = new ModelAndView("myPosts");
		userModel.addObject("userList", postService.getOwnData(userRepo.findByFirstname(name).getId()));
		return userModel;
	}

	@DeleteMapping(value = "/delete-post/{id}")
	public String DeletePost(@PathVariable("id") int id) {
		postService.DeletePost(id);
		return "Deleted";
	}

}
