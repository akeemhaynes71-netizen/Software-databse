/**
 * Author: Akeem Haynes
 * File: HaynesHW8.java
 * Description:
 * This class stores a student's name and grades for four courses.
 * It includes methods to assign grades, calculate the average,
 * and display all results.
 */

public class HaynesHW8 {

    
    // Data fields
    
    public String studentName;
    public double course1;
    public double course2;
    public double course3;
    public double course4;
    public double average;

    
    // Constructors
    // No-argument constructor
    public HaynesHW8() {
        studentName = "Unknown Student";
        course1 = 0.0;
        course2 = 0.0;
        course3 = 0.0;
        course4 = 0.0;
        average = 0.0;
    }

    
    // Methods
    public double assignGrades(double c1, double c2, double c3, double c4) {
        course1 = c1;
        course2 = c2;
        course3 = c3;
        course4 = c4;
        average = (c1 + c2 + c3 + c4) / 4.0;
        return average;
    }

    // Method: display
    public void display() {
        System.out.println("Student: " + studentName);
        System.out.printf("Course 1: %.2f%n", course1);
        System.out.printf("Course 2: %.2f%n", course2);
        System.out.printf("Course 3: %.2f%n", course3);
        System.out.printf("Course 4: %.2f%n", course4);
        System.out.printf("Average: %.2f%n", average);
    }
}
