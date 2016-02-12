package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
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
		message.setText("http://localhost:8080/user-signup/confirmation/"+userid+".html");
		mailSender.send(message);	
	}
	
	public void sendMailChef(String to,String userid) {

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(to);
		message.setSubject("Confirmation Mail");
		message.setText("Please click on the given link to confirm:"+"\n"+"\n");
		message.setText("http://localhost:8080/chef-signup/confirmation/"+userid+".html");
		mailSender.send(message);	
	}

}