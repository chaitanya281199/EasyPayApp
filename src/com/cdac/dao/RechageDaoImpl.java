package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Recharge;
import com.cdac.dto.User;
@Repository
public class RechageDaoImpl implements RechargeDao{
	@Autowired
    private HibernateTemplate hibernateTemplate;
	@Override
	public void insertRecharge(Recharge recharge) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				session.save(recharge);
				tr.commit();
				session.flush();
				session.close();
				
				return null;
			}
  
		});
	}
	@Override
	public List<Recharge> selectAll(int userId) {
		List<Recharge> list=hibernateTemplate.execute(new HibernateCallback<List<Recharge>>() {

			@Override
			public List<Recharge> doInHibernate(Session session) throws HibernateException {
				Transaction tr=session.beginTransaction();
				Query q=session.createQuery("from Recharge where userId=?");
				q.setInteger(0,userId);
				List<Recharge> li=q.list();
				tr.commit();
				session.flush();
				session.close();
				
				return li;
			}
		});
		return list;
	}
	@Override
	public void delBill(int transactionId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Recharge(transactionId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

}
