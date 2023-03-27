package com.ecity_app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecity_app.entity.ElectricityBill;
import com.ecity_app.repository.ElectricityRepository;

@Service
public class ElectricityServiceImpl implements ElectricityService {
	
	@Autowired
	private ElectricityRepository electricRepository;
	
	@Override
	public long calculateBill(long units) {
		long bill = 0;

		if (units > 100) {
			if (units > 200) {
				if (units > 300) {
					bill = units * 5;
				}else
				bill = units * 4;
			}else
			bill = units * 3;
		} else {
			bill = units * 2;
		}
		return bill;
	}

	@Override
	public void saveBill(ElectricityBill bill) {
		electricRepository.save(bill);
		
	}
	@Override
	public List<ElectricityBill> showAllBills() {
		List<ElectricityBill> bills = electricRepository.findAll();
		return bills;
	}

}
