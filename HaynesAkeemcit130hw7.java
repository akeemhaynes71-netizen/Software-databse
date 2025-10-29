import java.util.ArrayList;
import java.util.Scanner;
public class HaynesAkeemcit130hw7{
    Scanner input = new Scanner(System.in);
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        ArrayList<Integer> a = new ArrayList<Integer>();
        System.out.println("Enter number between 1 and 5");
        int AgentsNum = input.nextInt();
        input.nextLine();
    while(AgentsNum < 1 || AgentsNum > 5) {  
            System.out.println("Agent number out of range, please re-enter:");
        AgentsNum = input.nextInt(); // ask again inside the loop
    }
            // ✅ Step 3: Create arrays of that size
            String[] name = new String[AgentsNum];
            double[] sales = new double[AgentsNum];
            double[] rate = new double[AgentsNum];
            double[] commission = new double[AgentsNum];
            Userinfo(input,name,sales);
            calculate(rate,commission,sales);
            totalsales(sales);
            display(name,sales,rate,commission);
            totalsales(sales);
            System.out.println("Total sale are: " + totalsales(sales));
            System.out.printf("Average sale are: %.2f\n", averagesales(sales));
            System.out.printf("Total Commission %.2f:\n", totalcommission(commission));
            
        }           
            
    public static void Userinfo(Scanner input, String [] name, double[] sales){
       
            
        for (int i = 0; i < name.length; i++) {
            System.out.println((i + 1) + " Enter Agent name");
            
            name[i] = input.nextLine();
             
            System.out.println("Enter sales amount");
            sales[i] = input.nextDouble();
    
            
            while(sales[i]< 0){
            System.err.println("Enter sales amount");
            sales[i] = input.nextDouble();
            }

    
            input.nextLine();
            }
        }
    public static double[] calculate(double[] rate, double[] commission, double[] sales) {
        for (int i = 0; i < sales.length; i++) {
            if (sales[i] > 1 && sales[i] < 10000) {
                rate[i] = 0.05;
            } else if (sales[i] > 10000 && sales[i] <= 50000) {
                rate[i] = 0.07;
            } else if (sales[i] > 50000) {
                rate[i] = 0.10;
            } 
            else {
            rate[i] = 0;  // for cases like sale = 0
        }

        // Calculate commission for that agent
        commission[i] = sales[i] * rate[i];
        
    }
    return commission;
}

    // Return the completed commission array
    public static void display(String[] name, double[] sales, double[] rate, double[] commission) {
         System.out.printf("%s%s%s"," name ", " sales ",  " commission ");
        for (int i =0; i < name.length; i++) {
        System.out.printf("%s $%.2f $%.2f\n", name[i], sales[i], commission[i]);
        }
    }
    
    public static double totalsales(double [] sales){
        double totalsales = 0;
        for(int i = 0; i < sales.length; i++){
            totalsales += sales[i];
        
        }
        return totalsales;
    }     
    public static double averagesales(double [] sales) {
        double total = totalsales(sales);
        double average = total/sales.length;
        return average;
    }
    public static double totalcommission(double [] commission){
        double totalcommission = 0;
        for (int i = 0; i < commission.length; i++) {
            totalcommission += commission[i];    
        }
    
        return totalcommission;
        
    }
    
        
}
      
    
        
