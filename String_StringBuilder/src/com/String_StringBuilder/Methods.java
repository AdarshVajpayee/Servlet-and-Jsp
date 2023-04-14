package com.String_StringBuilder;

import java.util.Arrays;

/**
 *
 * @author vajpa
 */
public class Methods {
    public static void main(String[] args) {
        String[] computers = {"RAM","SSD","MOUSE"};
        String[] parts = {computers[0],computers[2]};
        System.out.println(parts[1]); // MOUSE
        
        String name = "Hello Adarsh Vajpayee Here";
        System.out.println(Arrays.toString(name.toCharArray()));
        System.out.println(name.toLowerCase());
        System.out.println(name.toUpperCase());
        System.out.println(name);
        
        System.out.println(name.indexOf("A"));
        System.out.println("       Adarsh    ".trim());
        System.out.println(Arrays.toString(name.split(" ")));
    }
}

/*
MOUSE
[H, e, l, l, o,  , A, d, a, r, s, h,  , V, a, j, p, a, y, e, e,  , H, e, r, e]
hello adarsh vajpayee here
HELLO ADARSH VAJPAYEE HERE
Hello Adarsh Vajpayee Here
6
Adarsh
[Hello, Adarsh, Vajpayee, Here]
*/
