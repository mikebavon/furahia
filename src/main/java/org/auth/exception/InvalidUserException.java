package org.auth.exception;

public class InvalidUserException extends Exception{

	private static final long serialVersionUID = 1L;

	private String message = "Invalid login details";

	public InvalidUserException() {
		super();
	}

	public InvalidUserException(String message) {
		super(message);
		this.message = message;
	}

	public InvalidUserException(Throwable cause) {
		super(cause);
	}
	
	public InvalidUserException(String message, Throwable cause){
		super(message, cause);
	}

	@Override
	public String toString() {
		return message;
	}

	@Override
	public String getMessage() {
		return message;
	}
}