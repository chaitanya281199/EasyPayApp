package com.cdac.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="offersTable")
public class AdminAddOffers {
	@Id
	@GeneratedValue
   private int offerId;
   private int plan;
   private int validity;
   private String Benefits;
   //userId
   
public AdminAddOffers(int offerId) {
	super();
	this.offerId = offerId;
}
public int getOfferId() {
	return offerId;
}
public void setOfferId(int offerId) {
	this.offerId = offerId;
}
public AdminAddOffers() {
	
}
public int getPlan() {
	return plan;
}
public void setPlan(int plan) {
	this.plan = plan;
}
public int getValidity() {
	return validity;
}
public void setValidity(int validity) {
	this.validity = validity;
}
public String getBenefits() {
	return Benefits;
}
public void setBenefits(String benefits) {
	Benefits = benefits;
}
@Override
public String toString() {
	return "AdminAddOffers [plan=" + plan + ", validity=" + validity + ", Benefits=" + Benefits + "]";
}
   
}
