package com.cdac.dao;

import java.util.List;

import com.cdac.dto.AdminAddOffers;

public interface AdminOfferDao {
   public void insertAdminOffers(AdminAddOffers offers);
   public List<AdminAddOffers> selectAll();
   public void deleteAdmOffer(int OfferId);
   AdminAddOffers selectOffer(int offerId);
   void updateOffer(AdminAddOffers offer);
}
