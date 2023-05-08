package com.release.exception;

public class EmailEsistenteException extends Exception {
 
	private static final long serialVersionUID = 1L;

	public EmailEsistenteException(String message, Throwable cause) {
		super(message, cause);
	
	}	
}
