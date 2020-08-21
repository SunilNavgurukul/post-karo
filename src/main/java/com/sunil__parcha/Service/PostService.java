package com.sunil__parcha.Service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunil__parcha.Modal.Post;
import com.sunil__parcha.Modal.UserDetails;
import com.sunil__parcha.repository.PostRepo;
import com.sunil__parcha.repository.UserDetailsRepo;

@Service
public class PostService {

	@Autowired
	private PostRepo postrepo;

	@Autowired
	private UserDetailsRepo userDetailsRepo;

	public List<Post> findAll() {
		return postrepo.findAllByOrderByIdDesc();
	}

	public Post add(Post user, String name) {
		UserDetails userDetails = userDetailsRepo.findByFirstname(name);
		user.setUserDetails(userDetails);
		return postrepo.save(user);
	}

	public Post Captionupdate(int id) {
		Post UserPost = postrepo.findById(id).get();
		return UserPost;
	}
	public Post likes(Post user, int id) {
		Post UserPost = postrepo.findById(id).get();
		user.setLikes(UserPost.getLikes()+1);
		user.setCaption(UserPost.getCaption());
		user.setId(UserPost.getId());
		user.setPostimg(UserPost.getPostimg());
		user.setUserDetails(UserPost.getUserDetails());
		return postrepo.save(user);
	}

	public void DeletePost(int id) {
		postrepo.deleteById(id);
	}

	@SuppressWarnings("unchecked")
	public JSONArray getOwnData(int id) {
		JSONArray array = new JSONArray();
		for (Object[] i : postrepo.getOwnData(id)) {
			JSONObject obj = new JSONObject();
			obj.put("id", i[0]);
			obj.put("caption", i[1]);
			obj.put("likes", i[2]);
			obj.put("postimg", i[3]);			
			array.add(obj);
		}
		return array;
	}

}
