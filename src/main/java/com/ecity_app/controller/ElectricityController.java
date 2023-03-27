package com.ecity_app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecity_app.entity.ElectricityBill;
import com.ecity_app.service.ElectricityService;


@Controller
public class ElectricityController {
	
	@Autowired
	private ElectricityService electricityService;
	
	@RequestMapping("/ecity")
	public String viewForm() {
		return "ecity_form";
	}
	@RequestMapping("/amount")
	public String generateBill(@RequestParam("noOfUnits")long units,Model model,
			@RequestParam("customerName")String name){
		long amount = electricityService.calculateBill(units);
		model.addAttribute("name", name);
		model.addAttribute("units", units);
		model.addAttribute("amount", amount);
		return "ecity_bill";
	}
	@RequestMapping("/bill")
	public String electricityDetails(@ModelAttribute("billDetails")ElectricityBill bill,Model model) {
		electricityService.saveBill(bill);
		List<ElectricityBill> bills = electricityService.showAllBills();
		model.addAttribute("bills", bills);
		return "all_bills";
	}
	@RequestMapping("/listall")
	public String getAllBills(Model model){
		List<ElectricityBill> bills = electricityService.showAllBills();
		model.addAttribute("bills", bills);
		return "all_bills";
}
}
