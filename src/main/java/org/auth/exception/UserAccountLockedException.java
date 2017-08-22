package org.auth.exception;

public class UserAccountLockedException  extends Exception{

	private static final long serialVersionUID = 1L;

	private String message = "User account locked, contact administrator";

	public UserAccountLockedException() {
		super();
	}

	public UserAccountLockedException(String message) {
		super(message);
		this.message = message;
	}

	public UserAccountLockedException(Throwable cause) {
		super(cause);
	}
	
	public UserAccountLockedException(String message, Throwable cause){
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