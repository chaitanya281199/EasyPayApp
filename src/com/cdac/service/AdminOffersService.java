package com.cdac.service;

import java.util.List;

import com.cdac.dto.AdminAddOffers;

public interface AdminOffersService {
    public void adddAdminOffers(AdminAddOffers offers);
    List<AdminAddOffers> seeAllOffers();
    public void removeAdmOffers(int offerId);
    AdminAddOffers findOffer(int offerId);
    void modifyOffer(AdminAddOffers offer);
}
