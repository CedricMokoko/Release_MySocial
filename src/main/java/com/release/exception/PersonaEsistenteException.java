package com.release.exception;

public class PersonaEsistenteException extends Exception {

	private static final long serialVersionUID = 1L;

	public PersonaEsistenteException(String message, Throwable cause) {
		super(message, cause);
	
	}	
}
