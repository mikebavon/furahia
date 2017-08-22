package org.common.model;

public enum Gender {
	MALE("Male"),
	FEMALE("Female");

	private String name;
	private Gender(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return name;
	}
}