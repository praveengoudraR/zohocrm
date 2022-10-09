//14/09/2022
package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entity.Lead;

public interface LeadService {

//          15/09/2022
	public void saveOneLead(Lead lead);
		// TODO Auto-generated method stub
//          16/09/2022
	public Lead getOneLead(long id);
	public void deleteOneLead(long id);
//		19/9/2022
	public List<Lead> listLeads();
	
		
	
}
