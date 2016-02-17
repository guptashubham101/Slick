package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MailService {

	@Autowired
	private MailSender mailSender;
	
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendMailUser(String to,String userid) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Confirmation Mail");
		message.setText("Please click on the given link to confirm:"+"\n"+"\n");
		message.setText("http://localhost:8080/Pickle/usignup/confirmation/"+userid+".html");
		mailSender.send(message);	
	}
	
	public void sendMailChef(String to,String chefid) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Confirmation Mail");
		message.setText("Please click on the given link to confirm:"+"\n"+"\n");
		message.setText("http://localhost:8080/Pickle/chef-signup/confirmation/"+chefid+".html");
		mailSender.send(message);	
	}

	

}