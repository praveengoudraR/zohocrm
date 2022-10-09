
//14/09/2022
package com.zohocrm.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zohocrm.entity.Lead;
import com.zohocrm.repository.LeadRepository;

@Service
public class leadServiceImpl implements LeadService {
	
	@Autowired
	private LeadRepository leadRepo;
//15/09/2022
	@Override
	public void saveOneLead(Lead lead) {
		leadRepo.save(lead);

	}
//16/09/02
	@Override
	public Lead getOneLead(long id) {
		Optional<Lead> findById = leadRepo.findById(id);
		return findById.get();
		
	
	}
	@Override
	public void deleteOneLead(long id) {
		leadRepo.deleteById(id);
		
	}
	//----------19/09/2022
	@Override
	public List<Lead> listLeads() {
		List<Lead> leads = leadRepo.findAll();
		return leads;
	}

}
