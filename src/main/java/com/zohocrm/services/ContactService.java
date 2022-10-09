
//             16/09/2022
package com.zohocrm.services;

import java.util.List;

import com.zohocrm.entity.Contact;

public interface ContactService {
	public void saveOneContact(Contact contact);

	public List<Contact> getAllContacts();

}
