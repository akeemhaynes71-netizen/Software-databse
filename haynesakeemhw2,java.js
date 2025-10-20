import java.util.Scanner;

public class LastNameFirstNameCIT130Hw2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.println("Will calculate drink price in regular Starbuck coffee!");

        System.out.print("Enter Customer name: ");
        String customer1 = input.nextLine();

        System.out.print("Enter the number of drinks: ");
        int drinks1 = input.nextInt();

        String drinkName = "ice Coffee";

        System.out.print("drink name is " + drinkName + " Enter the price per drink: ");
        double price1 = input.nextDouble();

        double total1 = drinks1 * price1;
        System.out.printf("You ordered %d drinks. Total cost is $%.2f\n", drinks1, total1);
        System.out.println(customer1 + " your " + drinkName + " is ready!");

        System.out.println("Now, let's calculate the total cost of the same drink at the CSN Starbucks location.");

        input.nextLine(); // clear buffer

        System.out.print("Enter Customer name: ");
        String customer2 = input.nextLine();

        System.out.print("Enter the number of drinks: ");
        int drinks2 = input.nextInt();

        System.out.print("Drink’s name is " + drinkName + " Enter the price per drink: ");
        double price2 = input.nextDouble();

        double total2 = drinks2 * price2;
        System.out.printf("You ordered %d Total cost is $%.2f\n", drinks2, total2);
        System.out.println(customer2 + " your " + drinkName + " is ready!");

        double difference = total1 - total2;
        System.out.printf("The difference in price is: $%.2f\n", difference);

        System.out.println(customer1 + " you better purchase your coffee from the campus Starbucks!");
        System.out.println("Press any key to continue . . .");

        input.close();
    }
}
