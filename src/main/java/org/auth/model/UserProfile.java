package org.auth.model;

/**
 * Created by fastlane on 8/10/16.
 */
public enum UserProfile {

    ADMIN("Admin"),
    DONOR("Donor");

    private String name;

    private UserProfile(String name){
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
