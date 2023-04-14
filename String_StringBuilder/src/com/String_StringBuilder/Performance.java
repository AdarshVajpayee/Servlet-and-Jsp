package com.String_StringBuilder;

/**
 *
 * @author vajpa
 */
public class Performance {
    public static void main(String[] args) {
        String series = "";
        for(int i=0;i<26;i++)
        {
            char ch = (char)('a'+i);
            series = series+ch;
        }
        System.out.println(series);
    }
}

// it takes much time becoz each time object is copied Since String are immutable so we use StringBuilder.
 // the above code takes O(n^2).

// Where as the code with StringBuilder takes O(n).
