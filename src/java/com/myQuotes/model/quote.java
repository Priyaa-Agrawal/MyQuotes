
package com.myQuotes.model;

public class quote {
    
    private String quote;
    private String email;
    private String name;

    public String getName() {
        return name;
    }
    
    
    public quote() {
    }

    public quote(String quote, String email, String name) {
        this.quote = quote;
        this.email = email;
        this.name = name;
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
