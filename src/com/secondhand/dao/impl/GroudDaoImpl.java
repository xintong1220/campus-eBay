package com.secondhand.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.secondhand.dao.GroudDao;
import com.secondhand.model.Groud;
import com.secondhand.model.Plate;

@Component("groudDao")
public class GroudDaoImpl implements GroudDao {
	private SessionFactory sessionFactory;



	public SessionFactory getSessionFactory() {
	return sessionFactory;
}
@Resource
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}

	

	public Groud findGroudNameAndPlateName(int groudId) {
		Session session=sessionFactory.getCurrentSession();
		return (Groud)session.load(Groud.class, groudId);
	}

	public List<Plate> findAllPlate() {
		Session session=sessionFactory.getCurrentSession();
		return (List<Plate>)session.createQuery("from Plate");
	}
	
	

}
