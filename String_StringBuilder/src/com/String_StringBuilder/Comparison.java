package com.String_StringBuilder;

import java.util.Arrays;

/**
 *
 * @author vajpa
 */
public class Comparison {
    public static void main(String[] args) {
        String a1 = "Adarsh";
        String b1 = "Adarsh";
        
        // It will create an object a1 in stack pointing to value "Adarsh" in Heap 
        // In Heap there is separate space for Strings Named "String Pool" say we created an object with value Adarsh that gets stored 
        // Once in heap. b1 will refer a1, Both  a1 and b1 pointing to single Adarsh in String Pool
        
        System.out.println("Output: "+ (a1==b1)); // true
        
        // Say We want to create to different objects of String With same Value
        // Outside String Pool
        
        String name1 = new String("Adarsh"); // Exceplicitly Creating  using new
        String name2 = new String("Adarsh");
        
        System.out.println("Output: "+ (name1==name2)); // false
        System.out.println("Output: "+ (name1.equals(name2))); //true // It cares about values.
        System.out.println(name1.charAt(0));
        
        // One of the example of Function overloading.
        System.out.println(19);
        System.out.println("adarsh");
        System.out.println(Arrays.toString(new int[]{1,2,3,4,5}));
        
        
        // Wrapper Class
        Integer num = new Integer(56);
        System.out.println(num.toString());
    }
}

