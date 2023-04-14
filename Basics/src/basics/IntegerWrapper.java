package basics;

public class IntegerWrapper {
    public static void main(String args[])
    {
        Integer iob = new Integer("100");
        //Integer iob = new Integer(100);
        int i = iob.intValue();
        System.out.println(i+" "+iob);
        
        Integer iob1 = 200;// Auto Box an int
        int i1 = iob1; // Auto-unbox
        System.out.println(i1+" "+iob1);

    }
}

