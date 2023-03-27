package com.ecity_app.service;

import java.util.List;

import com.ecity_app.entity.ElectricityBill;

public interface ElectricityService {
	public long calculateBill(long units);
	public void saveBill(ElectricityBill bill);
	public List<ElectricityBill> showAllBills();
}
