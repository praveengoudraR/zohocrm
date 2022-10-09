//14/09/2022
package com.zohocrm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entity.Contact;
import com.zohocrm.entity.Lead;
import com.zohocrm.services.ContactService;
import com.zohocrm.services.LeadService;

@Controller
public class LeadController {
	
	@Autowired
	private LeadService leadService;
	
//   16/09/2022--------------------
	@Autowired
	private ContactService contactService;
//--------------------------------------
	@RequestMapping("/viewLeadpage")
	public String viewLeadPage() {
		return "create_lead";
		
	}
	@RequestMapping("/saveLead")
	public String saveLead(@ModelAttribute("lead") Lead lead, ModelMap model) {
		
		leadService.saveOneLead(lead);
		model.addAttribute("lead", lead);
		return "lead_info";
		
	}
//-----------------------------------------------------------------------------------------------------------------------	
//				    	15/09/2022
	@RequestMapping("/composeEmail")
	public String composeEmail(@RequestParam("email") String email, ModelMap model) {
		model.addAttribute("email", email);
		return "compose_email";
	}
//-----------------------------------------------------------------------------------------------------------------------
//						16/09/22
	
	@RequestMapping("/converLead")
	public String converLead(@RequestParam("id") long id, ModelMap model) {
	Lead lead = leadService.getOneLead(id);
	
	
	Contact contact = new Contact();
	contact.setFirstName(lead.getFirstName());
	contact.setLastName(lead.getLastName());
	contact.setEmail(lead.getEmail());
	contact.setMobile(lead.getMobile());
	contact.setSource(lead.getSource());
	
	contactService.saveOneContact(contact);
	
	leadService.deleteOneLead(lead.getId());
	
	List <Contact> contacts = contactService.getAllContacts();
	model.addAttribute("Contacts", contact);
	return "list_contacts";
	
	
		
	}
//------------------------------------------------------------------------------------------------------------------------
	//			19/9/2022
	@RequestMapping("listall")
	public String gelallLeads(ModelMap model) {
		
		List<Lead> leads = leadService.listLeads();
		model.addAttribute("leads", leads);
		return "list_leads";
		
		
	}
	@RequestMapping("findLeadById")
	public String findOneLead(@RequestParam("id") long id, ModelMap model) {
		model.addAttribute("lead, lead");
		return "lead_info";
	}
	
}
