package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.AdminAddOffers;
import com.mysql.cj.Session;
@Repository
public class AdminOfferDaoImple implements AdminOfferDao{
	
	@Autowired
    private HibernateTemplate hibernateTemplate;
	@Override
	public void insertAdminOffers(AdminAddOffers offers) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(org.hibernate.Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(offers);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
		});
		
			
	
	}
	@Override
	public List<AdminAddOffers> selectAll() {
		
		List<AdminAddOffers> offerList = hibernateTemplate.execute(new HibernateCallback<List<AdminAddOffers>>() {

		

			@Override
			public List<AdminAddOffers> doInHibernate(org.hibernate.Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from AdminAddOffers");
				
				List<AdminAddOffers> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
				
			}
			
		});
		return offerList;
	}
	@Override
	public void deleteAdmOffer(int OfferId) {
		
	  hibernateTemplate.execute(new HibernateCallback<Void>() {

		@Override
		public Void doInHibernate(org.hibernate.Session session) throws HibernateException {
			Transaction tr = session.beginTransaction();
			session.delete(new AdminAddOffers(OfferId));
			tr.commit();
			session.flush();
			session.close();
			return null;
			
		}
	});
	}
	//To select one offer only
	@Override
	public AdminAddOffers selectOffer(int offerId) {
		AdminAddOffers offer = hibernateTemplate.execute(new HibernateCallback<AdminAddOffers>() {

			@Override
			public AdminAddOffers doInHibernate(org.hibernate.Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				AdminAddOffers ofr = (AdminAddOffers)session.get(AdminAddOffers.class, offerId);
				tr.commit();
				session.flush();
				session.close();
				return ofr;
			}
			
		});
		return offer;
		
	}
	@Override
	public void updateOffer(AdminAddOffers offer) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {
           
			@Override
			public Void doInHibernate(org.hibernate.Session session) throws HibernateException {
              Transaction tr = session.beginTransaction();
              System.out.println(offer);
				 //session.update(offer);
              
 AdminAddOffers ofr=(AdminAddOffers)session.get(AdminAddOffers.class, offer.getOfferId());
				ofr.setPlan(offer.getPlan());
                ofr.setValidity(offer.getValidity());
                ofr.setBenefits(offer.getBenefits());
            		  tr.commit();
				session.flush();
				session.close();
				return null;
				
			}
		});
	}
    
}
