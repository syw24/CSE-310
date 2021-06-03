import java.util.Scanner;
import java.util.ArrayList;

public class Work {

    // private String user;
    public int x;
    public int y;
    public int point;

    public void getNumber(int x, int y) {

        //x = -1;
        ArrayList<Integer> myNumbers = new ArrayList<Integer>();
        
        while (x!= y) {

            Scanner number = new Scanner(System.in);  // Create a Scanner object
            System.out.println("Guess the number");
            x = number.nextInt();
            myNumbers.add(x);

            if (x > y) {
                System.out.println("The number needs to be smaller.");
            } else if (x < y) {
                System.out.println("The number needs to be bigger.");
            } 
        }
        System.out.println("Congrats! You get it correct!\n");

        System.out.println("The numbers you had tried:");
        for (int i : myNumbers) {
            System.out.println(i);
          }
      }

    public static void main(String[] args) {
        
        int y = (int)(Math.random() * 101);
        
        Work myObj = new Work(); // Create an object of Main
        myObj.getNumber(-1, y);


        
  
    }
  }
  