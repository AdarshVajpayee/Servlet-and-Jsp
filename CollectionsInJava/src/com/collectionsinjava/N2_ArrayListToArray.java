
package com.collectionsinjava;

import java.util.ArrayList;


public class N2_ArrayListToArray {
    public static void main(String args[])
    {
        ArrayList<Integer> al = new ArrayList<>();
        
        System.out.println("Size of array list before addition : "+al.size());
        
        al.add(100);
        al.add(200);
        al.add(300);
        al.add(100);
        al.add(200);
        al.add(100);
        
        System.out.println("Size of array list After addition : "+al.size());
        
        System.out.println("Contents of al = "+al);
        
        Integer ia[] = new Integer[al.size()];
        ia = al.toArray(ia);
        
        int sum=0;
        for(int e:ia)
        {
            sum +=e;
        }
        System.out.println("Sum of elements is : "+sum);
    }
}

/*

Size of array list before addition : 0
Size of array list After addition : 6
Contents of al = [100, 200, 300, 100, 200, 100]
Sum of elements is : 1000
*/



/*
Object[ ] toArray( )
<T> T[ ] toArray(T array[ ])
*/