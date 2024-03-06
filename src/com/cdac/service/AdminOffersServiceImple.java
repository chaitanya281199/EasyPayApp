package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.AdminOfferDao;
import com.cdac.dto.AdminAddOffers;

@Service
public class AdminOffersServiceImple  implements AdminOffersService{
    @Autowired
	private AdminOfferDao adminOfferDao;
	@Override
	public void adddAdminOffers(AdminAddOffers offers) {
		
		adminOfferDao.insertAdminOffers(offers);
	}
	@Override
	public List<AdminAddOffers> seeAllOffers() {
		return adminOfferDao.selectAll();
		 
	}
	@Override
	public void removeAdmOffers(int offerId) {
		adminOfferDao.deleteAdmOffer(offerId);
		
	}
	@Override
	public AdminAddOffers findOffer(int offerId) {
		return adminOfferDao.selectOffer(offerId);
		 
	}
	@Override
	public void modifyOffer(AdminAddOffers offer) {
		adminOfferDao.updateOffer(offer);
		
	}

	
}
