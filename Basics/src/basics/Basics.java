/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package basics;

/**
 *
 * @author vajpa
 */
import java.io.*;
import java.util.*;
import java.lang.Enum;
public class Basics {

    /**
     * @param args the command line arguments
     */
    enum Branch{CSE,ISE,AIML,ECE,EEE};
    public static void main(String[] args) {
        // TODO code application logic here
        
        Branch ap,ap2,ap3;
        System.out.println("Enumerations");
        
        System.out.println("Ordinal values ");
        for(Branch a:Branch.values())
        {
            System.out.println(a+" "+a.ordinal());
        }
        ap = Branch.CSE;
        ap2 = Branch.ISE;
        ap3 = Branch.CSE;
        System.out.println();
        
        if(ap.compareTo(ap2)<0)
            System.out.println(ap+" comes before "+ap2);
        if(ap.compareTo(ap2)>0)
            System.out.println(ap+" comes after "+ap2);
        if(ap.compareTo(ap3)==0)
            System.out.println(ap+" equals "+ap3);
        System.out.println();
        if(ap.equals(ap2))
            System.out.println("Error");
        
    }
    
}
