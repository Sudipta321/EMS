package com.java.spring.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;

@Service
public class DataService {

	 @Value("#{'${data.op}'.split(',')}")
	 private List<String> myList;


	 @Autowired
     private MessageSource messageSource;


	public MessageSource getMessageSource() {
		return messageSource;
	}

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	public List<String> getMyList() {
		return myList;
	}

	public void setMyList(List<String> myList) {
		this.myList = myList;
	}

  public void test(){
	  System.out.println(this.messageSource.getMessage("data.op1", null, "test", null));
  }

}
