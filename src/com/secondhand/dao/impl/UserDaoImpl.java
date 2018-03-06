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

import com.secondhand.dao.UserDao;
import com.secondhand.model.User;

@Component("userDao")
public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;



	public SessionFactory getSessionFactory() {
	return sessionFactory;
}
@Resource
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}



	public void save(User u) {
		Session session=sessionFactory.getCurrentSession();
		session.save(u);
	}

	public boolean checkUserExistByName(String username) {
		Session session=sessionFactory.getCurrentSession();
		List<User> users = session.createQuery("from User u where u.username = '" + username + "'").list();

		if (users != null && users.size() > 0) {
			return true;
		}
		return false;
	}

	public int findUserIdByName(String username) {
		Session session=sessionFactory.getCurrentSession();
		List<User> users = session.createQuery("from User u where u.username = '" + username + "'").list();
		int id = 0;
		for(User user : users){
			id = user.getId();
		}
		return id;
	}
	
	public List list(final int offiset) {
		Session session=sessionFactory.getCurrentSession();

				List list=session.createQuery("from User")
					.setFirstResult((offiset-1)*10)
					.setMaxResults(10)
					.list();
				return list;
		
	}
	
	public int getUserCount(){
		Session session=sessionFactory.getCurrentSession();
		int count = ((Long)session.createQuery("select count(*) from User").uniqueResult()).intValue();
		return count;
	}
	

	public User listOne(int userId) {
		Session session=sessionFactory.getCurrentSession();
		return (User) session.load(User.class, userId);
	}

	public boolean checkUsernameAndPassword(String username, String password) {
		Session session=sessionFactory.getCurrentSession();
		List<User> users = session.createQuery("from User u where u.username = '" + username + "'" + " and u.password = '" + password + "'").list();

		if (users != null && users.size() > 0) {
			return true;
		}
		return false;
	}

	public void update(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.update(user);
	}

	public void userDelete(User user) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(user);
	}
	

}
