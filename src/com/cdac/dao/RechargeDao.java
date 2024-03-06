package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Recharge;

public interface RechargeDao {
  public void insertRecharge(Recharge recharge);
  List<Recharge> selectAll(int userId);
   void delBill(int transactionId);
}
