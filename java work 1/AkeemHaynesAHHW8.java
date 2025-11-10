import java.util.Scanner;

/**
 * @author Akeem Haynes
 * @file HaynesAkeemHW8A.java
 * @description Demonstrates the HaynesAHHW8A class
 *              using three examples (default, assigned, and user input).
 */
public class AkeemHaynesAHHW8 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        
        System.out.println("Example 1: Using default constructor");
        HaynesHW8 s1 = new HaynesHW8();
        s1.display();

        
        System.out.println("\nExample 2: Assigned data directly");
        HaynesHW8 s2 = new HaynesHW8();
        s2.studentName = "Alex Green";
        s2.assignGrades(85.0, 90.0, 88.0, 92.0);
        s2.display();

        
        System.out.println("\nExample 3: Input from user");
        HaynesHW8 s3 = new HaynesHW8();

        System.out.print("Enter student name: ");
        s3.studentName = input.nextLine();

        System.out.print("Enter Course 1 grade: ");
        double c1 = input.nextDouble();
        System.out.print("Enter Course 2 grade: ");
        double c2 = input.nextDouble();
        System.out.print("Enter Course 3 grade: ");
        double c3 = input.nextDouble();
        System.out.print("Enter Course 4 grade: ");
        double c4 = input.nextDouble();

        s3.assignGrades(c1, c2, c3, c4);
        s3.display();
    }
}

    