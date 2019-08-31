
package com.myQuotes.model;

public class quote {
    
    private String quote;
    private String email;

    public quote() {
    }

    public quote(String quote, String email) {
        this.quote = quote;
        this.email = email;
    }

    public String getQuote() {
        return quote;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    
}
