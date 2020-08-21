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

	public Post add(Post user) {
		UserDetails userDetails = userDetailsRepo.findById(1).get();
		user.setUserDetails(userDetails);
		return postrepo.save(user);
	}

	public Post Captionupdate(Post user, int id) {
		Post UserPost = postrepo.findById(id).get();
		UserPost.setCaption(user.getCaption());
		return UserPost;
	}

	public void DeletePost(int id) {
		postrepo.deleteById(id);
	}

	@SuppressWarnings("unchecked")
	public JSONArray getOwnData(int id) {
		JSONArray array = new JSONArray();
		for (Object[] i : postrepo.getOwnData(id)) {
			JSONObject obj = new JSONObject();
			obj.put("caption", i[1]);
			obj.put("likes", i[2]);
			obj.put("postimg", i[3]);			
			array.add(obj);
		}
		return array;
	}

}
