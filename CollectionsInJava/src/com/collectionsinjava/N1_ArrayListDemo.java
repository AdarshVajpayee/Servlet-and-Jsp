
package com.collectionsinjava;

import java.util.ArrayList;

public class N1_ArrayListDemo {

    public static void main(String[] args) {
        // TODO code application logic here
        
        ArrayList<String> al = new ArrayList<>();
        
        System.out.println("Initial size of al = "+al.size());
        
        // Add elements to arrayList
        al.add("Adarsh");
        al.add("Sunil");
        al.add("Prajjwal");
        al.add("Abhay");
        al.add(3,"Aditi");
        
        System.out.println("Size of al after Addition = "+al.size());
        System.out.println("Contents of al after additions : " + al);
        
        al.remove("Sunil");
        al.remove(3);
        
        System.out.println("Size of al after Deletion = "+al.size());
        System.out.println("Contents of al after deletion : " + al);
        
    }
    
}

/*

Output:

Initial size of al = 0
Size of al after Addition = 5
Contents of al after additions : [Adarsh, Sunil, Prajjwal, Aditi, Abhay]
Size of al after Deletion = 3
Contents of al after deletion : [Adarsh, Prajjwal, Aditi]

Constructors.

ArrayList( )
ArrayList(Collection<? extends E> c)
ArrayList(int capacity)

*/
