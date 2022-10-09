
//13/09/2022
package com.zohocrm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.zohocrm.entity.Lead;

public interface LeadRepository extends JpaRepository<Lead, Long> {

}
