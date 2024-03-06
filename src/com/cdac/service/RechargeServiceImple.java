package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.RechargeDao;
import com.cdac.dto.Recharge;
@Service
public class RechargeServiceImple implements RechargeService{
 
	@Autowired
	private RechargeDao rechargeDao;
	@Override
	public void addRechargeDetails(Recharge recharge) {
	   rechargeDao.insertRecharge(recharge);
		
	}
	@Override
	public List<Recharge> selectBill(int userId) {
		
		return rechargeDao.selectAll(userId);
	}
	@Override
	public void userdeleteBill(int transactionId) {
		rechargeDao.delBill(transactionId);
		
	}
	

}
