package com.ecity_app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ecity_app.entity.ElectricityBill;

public interface ElectricityRepository extends JpaRepository<ElectricityBill, Long> {

}
