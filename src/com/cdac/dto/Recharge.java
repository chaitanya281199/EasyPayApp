package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="recharge")
public class Recharge {
  @Id
  @GeneratedValue
  @Column(name="tra_id")
  private int transactionId;
  @Column(name="mob_no")
  private String mobNo;
  //@Column(name="operator")
  //private String operator;
  private int amount;
  @Column(name="user_id")
  private int userId;
  
public Recharge(int transactionId) {
	super();
	this.transactionId = transactionId;
}
public Recharge() {
	
}
public int getTransactionId() {
	return transactionId;
}
public void setTransactionId(int transactionId) {
	this.transactionId = transactionId;
}
public String getMobNo() {
	return mobNo;
}
public void setMobNo(String mobNo) {
	this.mobNo = mobNo;
}
/*public String getOperator() {
	return operator;
}
public void setOperator(String operator) {
	this.operator = operator;
}*/
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public int getUserId() {
	return userId;
}
public void setUserId(int userId) {
	this.userId = userId;
}
@Override
public String toString() {
	return "Recharge [transactionId=" + transactionId + ", mobNo=" + mobNo + ", amount="
			+ amount + ", userId=" + userId + "]";
}



  
  
 
}
