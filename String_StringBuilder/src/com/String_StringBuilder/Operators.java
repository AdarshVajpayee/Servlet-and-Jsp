package com.String_StringBuilder;

import java.util.ArrayList;

/**
 *
 * @author vajpa
 */
public class Operators {
    public static void main(String[] args) {
        System.out.println('a' + 'b'); // 195
        System.out.println("a" + "b"); // ab
        System.out.println((char)('a'+1)); // b
        
        
        System.out.println("a" + 1); // a1
        // This is same after a few steps : "a" + "1"
        // integer will be converted to Integer(Wrapper) that will call toString()
        
        System.out.println("Adarsh" + new ArrayList<>());
        System.out.println("Adarsh"+ new Integer(56));
        System.out.println( new Integer(56)+""+new ArrayList<>()); // atleast onestring should be present.
        
        // two objects cannot be concatenated.
    } 
}
