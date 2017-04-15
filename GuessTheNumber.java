//day 4
package car;

import java.util.Random;
import java.util.Scanner;

public class GuessTheNumber {
    
    long theNumber;
    long max = 1000000;
    
    Scanner sc = new Scanner(System.in);
    
    public GuessTheNumber(){
        Random rand = new Random();
        theNumber = Math.abs(rand.nextLong()) % (max + 1);
    }
    
    public void play(){
        while(true){
            int move = sc.nextInt();
            if(move > theNumber){
                System.out.println("Your number is too big");
            }
            else if(move < theNumber){
                System.out.println("Your number is too samll");
            }
            else{
                System.out.println("You nailed it");
                break;
            }
        }
    }
    
    public static void HowBigIsMyNumber(int x){
        if(x >= 0 && x <=10){
            System.out.println("Our number is pretty small");
        }
        else if(x >= 11 && x <= 100){
            System.out.println("Our number is pretty big");
        }
        else{
            System.out.println("Our number is out of range");
        }
    }
    public static void main(String[] args) {
        GuessTheNumber guessGame = new GuessTheNumber();
        System.out.println("Welcome to my game. try  and guess the impossible number"
                + "its between 0 and " + guessGame.max + " inclusive "
                + "just type the number to get Started.");
        if(guessGame.theNumber < 900000)
            guessGame.theNumber += 100000;
        System.out.println(guessGame.theNumber);
                
        guessGame.play();
    }
}
