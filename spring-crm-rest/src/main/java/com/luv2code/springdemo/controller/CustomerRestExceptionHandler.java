package com.luv2code.springdemo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class CustomerRestExceptionHandler {
	
	@ExceptionHandler
	public ResponseEntity<CustomerErrorResponse> handleException(CustomerNotFoundException exc)
	{
		CustomerErrorResponse cer=new CustomerErrorResponse();
		cer.setStatus(HttpStatus.NOT_FOUND.value());
		cer.setMessage(exc.getMessage());
		cer.setTimeStamp(System.currentTimeMillis());
		return new ResponseEntity<CustomerErrorResponse>(cer,HttpStatus.NOT_FOUND);
	}
	
	@ExceptionHandler
	public ResponseEntity<CustomerErrorResponse> handleException(Exception exc)
	{
		CustomerErrorResponse cer=new CustomerErrorResponse();
		cer.setStatus(HttpStatus.BAD_REQUEST.value());
		cer.setMessage(exc.getMessage());
		cer.setTimeStamp(System.currentTimeMillis());
		return new ResponseEntity<CustomerErrorResponse>(cer,HttpStatus.BAD_REQUEST);
	}

}
