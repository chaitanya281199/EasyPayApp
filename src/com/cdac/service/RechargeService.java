package com.cdac.service;

import java.util.List;

import com.cdac.dto.Recharge;

public interface RechargeService {
  public void addRechargeDetails(Recharge recharge);
  List<Recharge> selectBill(int userId);
  void userdeleteBill(int transactionId);
}
