
package com.collectionsinjava;

import java.util.LinkedList;


public class N3_LinkedListDemo {
    public static void main(String[] args) {
    
        LinkedList<String> stud = new LinkedList<String>();
        
        System.out.println("Size of linked list before addition: "+stud.size());
        
        stud.add("Adarsh");
        stud.add("Gopi");
        stud.add("Bhavani");
        stud.add("Abhay");
        stud.add("C Prajwal");
        stud.add("Shabri");
        stud.add("Gopi");
        
        stud.addFirst("Yash");
        stud.addFirst("Gnanesh");
        stud.addLast("Bhopal Ram");
        stud.add(3,"Aditi");
        
        System.out.println("Contents of linked list after addition : "+stud);
        
        stud.remove("Bhavani");
        stud.remove(5);
        
        System.out.println("Contents of linked list after deletions : "+stud);
        
        stud.removeFirst();
        stud.removeLast();
        
        System.out.println("Contents of linked list after deletion of First and Last Element : "+stud);
        
        String newName = stud.get(2);
        stud.set(2,newName+" Updated");
        
        String nayaNam = stud.getFirst();
        stud.set(0,"Mojit Anna");
        System.out.println("Linked list after change: "+stud);
        
        stud.removeFirstOccurrence("Gopi");
        System.out.println("Contents of linked list after deletion of First Occurence of Gopi : "+stud);
        stud.removeAll(stud);
        System.out.println("Empty Linked list: "+stud);
        
    }
}
/*
OUTPUT :

Size of linked list before addition: 0
Contents of linked list after addition : [Gnanesh, Yash, Adarsh, Aditi, Gopi, Bhavani, Abhay, C Prajwal, Shabri, Gopi, Bhopal Ram]
Contents of linked list after deletions : [Gnanesh, Yash, Adarsh, Aditi, Gopi, C Prajwal, Shabri, Gopi, Bhopal Ram]
Contents of linked list after deletion of First and Last Element : [Yash, Adarsh, Aditi, Gopi, C Prajwal, Shabri, Gopi]
Linked list after change: [Mojit Anna, Adarsh, Aditi Updated, Gopi, C Prajwal, Shabri, Gopi]
Contents of linked list after deletion of First Occurence of Gopi : [Mojit Anna, Adarsh, Aditi Updated, C Prajwal, Shabri, Gopi]
Empty Linked list: []



Constructors.

LinkedList( )
LinkedList(Collection<? extends E> c
*/