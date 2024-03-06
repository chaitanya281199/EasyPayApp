package com.cdac.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.User;
@Repository
public class UserDaoImple implements UserDao{
 
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Override
	public void insertUser(User user) {
		hibernateTemplate .execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
			  Transaction tr=session.beginTransaction();
			   session.save(user);
			   tr.commit();
			   session.flush();
			   session.close();
				return null;
			}
			
		});
		
	}
	@Override
	public boolean checkuser(User user) {
		boolean f=hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				List<User> li=new ArrayList<User>();
				boolean flag;
				try {
				Query q=session.createQuery("from User where userName=? and userPass=?");
				q.setString(0,user.getUserName());
				q.setString(1,user.getUserPass());
				li=q.list();
				flag=!li.isEmpty();
				user.setUserId(li.get(0).getUserId());
				user.setEmailId(li.get(0).getEmailId());
				user.setMobNo(li.get(0).getMobNo());
				}catch(Exception e) {
				 e.printStackTrace();
				 flag=false;
				 return flag;
				}finally {
					tr.commit();
					session.flush();
					session.close();
				}
				return flag;
			}
			
		});
		
		
		return f;
	}
	@Override
	public String forgotPassword(String userName) {
		String password = hibernateTemplate.execute(new HibernateCallback<String>() {

			@Override
			public String doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from User where emailId = ?");
				q.setString(0, userName);
				List<User> li = q.list();
				String pass = null;
				System.out.println(li);
				if(!li.isEmpty())
					pass = li.get(0).getUserPass();
				tr.commit();
				session.flush();
				session.close();
				return pass;
			}
			
		});
		return password;
	}
  
}
