package com.sunil__parcha.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sunil__parcha.Modal.Post;
import com.sunil__parcha.Service.PostService;

@RestController
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostService postService;
	
	@GetMapping(value = "/all-upload")
	public List<Post> findAll() {
		return postService.findAll();
	}
	
	@PostMapping(value = "/add-post")
	public Post Userpost(@RequestBody Post user) {
		return postService.add(user);
	}
	
	@PutMapping(value = "/update-caption/{id}")
	public Post UpdatePost(@RequestBody Post user, @PathVariable("id") int id) {
		return postService.Captionupdate(user, id);
	}
	
	@DeleteMapping(value = "/delete-post/{id}")
	public String DeletePost(@PathVariable("id") int id) {
		postService.DeletePost(id);
		return "Deleted";
	}

}
