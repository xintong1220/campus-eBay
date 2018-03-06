package com.secondhand.dao.impl;


import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.secondhand.dao.AdminDao;
import com.secondhand.model.Admin;

@Component("adminDao")
public class AdminDaoImpl implements AdminDao {
private SessionFactory sessionFactory;



	public SessionFactory getSessionFactory() {
	return sessionFactory;
}
@Resource
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	public void save(Admin admin) {
		Session session =sessionFactory.getCurrentSession();
		session.save(admin);
	}

	public Admin listOne(int userId) {
		Session session =sessionFactory.getCurrentSession();
		return (Admin) session.createQuery("from Admin a where a.user.id = '" + userId + "'");
	}

}
