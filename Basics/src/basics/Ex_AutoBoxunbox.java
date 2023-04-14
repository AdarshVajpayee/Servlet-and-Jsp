package basics;

import static javafx.application.Platform.exit;

/**
 *
 * @author vajpa
 */
public class Ex_AutoBoxunbox {
    static int m(Integer iob){
        return iob;
    }
    public static void main(String[] args) {
        Integer iob2 = m(200);
        System.out.println(iob2);
        ++iob2; // Autounboxing......Increment.......AutoBoxing
        System.out.println(iob2);
        
        iob2 = iob2 + (iob2/3);
        System.out.println(iob2);
        
        int i = iob2 + (iob2/3);
        
        System.out.println(i); // Final Auoboxing is not required.
        
        Double dob = 101.14;
        dob = iob2+dob;
        System.out.println(dob);
        
        Integer i1 = 3;
        switch(i1)
        {
            case 1: System.out.println("It is 1");
            break;
            case 2: System.out.println("It is 2");
            break;
            case 3: System.out.println("It is 3");
            break;
            default:exit();
        }
        
        
        Boolean b = true;
        if(b)
        {
            System.out.println("It is true");
        }
        
        Character ch ='a';
        char c = ch;
        System.out.println(c);
    }
}
