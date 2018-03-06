package com.secondhand.dao;

import java.util.List;

import com.secondhand.model.Post;
import com.secondhand.model.Reply;
import com.secondhand.model.User;

public interface PostDao {
	public List<Post> list(int groudId) ;
	public String findPostAuthor(int userId);
	public void save(Post post);
	public Post findPostById(int postId);
	public void update(Post post);
	public void saveReply(Reply reply);
	public List listReply(int postId, final int offiset);
	public List QueryPage(final int offiset, final int groudId);
	public int getCount(int groudId);
	public int getReplyCount(int postId);
	public int getPostCount(int userId);
	public List listAll(final int offiset);
	public int getAllPostCount();
	public void delete(Post post);
}
