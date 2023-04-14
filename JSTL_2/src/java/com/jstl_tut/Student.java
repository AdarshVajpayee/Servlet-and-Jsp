package com.jstl_tut;

/**
 *
 * @author vajpa
 */
public class Student {
    int rollno;
    String name;
    
    // Getters and Setters include called Beans.
    
    public void setRollno(int rollno)
    {
        this.rollno = rollno;
    }
    
    public String getName()
    {
        return name;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
     
    public int getRollno()
    {
        return rollno;
    }
    
    public Student(int rollno,String name)
    {
        super();
        this.rollno = rollno;
        this.name = name;    
    }
    
    @Override
    public String toString()
    {
        return "Student[rollno = "+rollno+",name = "+name+"]";
    }
}

