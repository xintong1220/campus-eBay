package com.secondhand.dao.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.secondhand.dao.PostDao;
import com.secondhand.model.Post;
import com.secondhand.model.Reply;
import com.secondhand.model.User;

@Component("postDao")
@SuppressWarnings("unchecked")
public class PostDaoImpl implements PostDao {
	private SessionFactory sessionFactory;



	public SessionFactory getSessionFactory() {
	return sessionFactory;
}
@Resource
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}



	
	public List<Post> list(int groudId) {
		Session session=sessionFactory.getCurrentSession();
		return (List<Post>) session.createQuery("from Post p where p.groud.id = '" + groudId + "' order by p.id desc");
	}

	public String findPostAuthor(int userId){
		Session session=sessionFactory.getCurrentSession();
		User u = (User)session.load(User.class, userId);
		return u.getUsername();
	}

	public void save(Post post) {
		Session session=sessionFactory.getCurrentSession();
		session.save(post);
	}

	public Post findPostById(int postId) {
		Session session=sessionFactory.getCurrentSession();
		Post post = (Post)session.load(Post.class, postId);
		return post;
	}

	public void update(Post post) {
		Session session=sessionFactory.getCurrentSession();
		session.update(post);
	}

	public void saveReply(Reply reply) {
		Session session=sessionFactory.getCurrentSession();
		session.save(reply);
		
	}

	public List listReply(final int postId, final int offiset) {
		Session session=sessionFactory.getCurrentSession();
		
		
				List list=session.createQuery("from Reply r where r.post.id = '" + postId + "' order by r.id desc")
					.setFirstResult((offiset-1)*6)
					.setMaxResults(6)
					.list();
				return list;
		
	}

	public List QueryPage(final int offiset, final int groudId){
		Session session=sessionFactory.getCurrentSession();
	
				List list=session.createQuery("from Post p where p.groud.id = '" + groudId + "' order by p.id desc")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return list;
		
	}
	
	public int getCount(int groudId){
		Session session=sessionFactory.getCurrentSession();
		int count = ((Long)session.createQuery("select count(*) from Post p where p.groud.id = '" + groudId + "'").uniqueResult()).intValue();
		return count;
	}

	public int getReplyCount(int postId) {
		Session session=sessionFactory.getCurrentSession();
		int count = ((Long)session.createQuery("select count(*) from Reply r where r.post.id = '" + postId + "'").uniqueResult()).intValue();
		return count;
	}

	public int getPostCount(int userId) {
		Session session=sessionFactory.getCurrentSession();
		int count = ((Long)session.createQuery("select count(*) from Post p where p.user.id = '" + userId + "'").uniqueResult()).intValue();
		return count;
	}

	public List listAll(final int offiset) {
		Session session=sessionFactory.getCurrentSession();
	
				List list=session.createQuery("from Post p order by p.id desc")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return list;
		
	}

	public int getAllPostCount() {
		Session session=sessionFactory.getCurrentSession();
		int count = ((Long)session.createQuery("select count(*) from Post").uniqueResult()).intValue();
		return count;
	}

	public void delete(Post post) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(post);
	}
}