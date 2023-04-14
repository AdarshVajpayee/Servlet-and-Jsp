package com.String_StringBuilder;

/**
 *
 * @author vajpa
 */
public class StringzBuilder {
    public static void main(String[] args) {
        StringBuilder builder = new StringBuilder();
        for(int i = 0; i<26;i++)
        {
            char ch = (char) ('a'+i);
            builder.append(ch);
        }
        System.out.println(builder.toString());
        
        System.out.println(builder.reverse());
        System.out.println(builder.reverse());
        
        System.out.println(builder.charAt(13));
        System.out.println(builder.indexOf("a"));
        System.out.println(builder.length());
        System.out.println(builder.substring(1, 13));
        System.out.println(builder.replace(0,13, "Adarsh Vajpayee "));
    }
        // String are immutable.
        // Where as StringBuilder is mutable.
}
