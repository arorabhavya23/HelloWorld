import java.util.Random;
import java.util.Scanner;

public class MadLibs {
    
    Scanner sc  = new Scanner(System.in);
    String story;
    String name;
    String adjective1;
    String adjective2;
    String noun1;
    String noun2;
    String noun3;
    String adverb;
    String randomNums;
    Random rand = new Random();
    
    // Getters!
    
    public String GetStory() {
        return story;
    }
    public String GetName() {
        return name;
    }
    public String GetAdjective1() {
        return adjective1;
    }
    public String GetAdjective2() {
        return adjective2;
    }
    public String GetNoun1() {
        return noun1;
    }
    public String GetNoun2() {
        return noun2;
    }
    public String GetNoun3() {
        return noun3;
    }
    public String GetAdverb() {
        return adverb;
    }
    public String getRandomNumber() {
        return randomNums;
    }
    
    //Setters!
    
    public void SetStory(String newStory) {
        this.story = newStory;
    }
    public void setName(String newName) {
        this.name = newName;
    }
    public void setAdjective1(String newAdjective1){
        this.adjective1 = newAdjective1;
    }
    public void setAdjective2(String newAdjective2) {
        this.adjective2 = newAdjective2;
    }
    public void setNoun1(String newNoun1) {
        this.noun1 = newNoun1;
    }
    public void setNoun3(String newNoun2) {
        this.noun2 = newNoun2;
    }
    public void setNoun2(String newNoun3) {
        this.noun3 = newNoun3;
    }
    public void setAdverb(String newAdverb) {
        this.adverb = newAdverb;
    }
    public void setRandomNums() {
        int n = Math.abs(rand.nextInt()) % 200;
        int a[] = new int[3];
        for(int i = 0; i < a.length; i++){
            a[i] = n + i;
        }
        randomNums = "not " + a[0] + ", not " + a[1] + ", but " + a[2];
    }
    
    public void TakeInput() {
        setName(sc.nextLine());
        
        System.out.println("Give me a noun!");
        setNoun1(sc.nextLine());
                
        System.out.println("I need an adjective.");
        setAdjective1(sc.nextLine());
  
        System.out.println("I really need an alpaca... Just kidding Give me another Adjective");
        setAdjective2(sc.nextLine());
        
        
        System.out.println("Give me another noun!");
        setNoun2(sc.nextLine());
        
        System.out.println("PLEASE! I really want an adverb!");
        setAdverb(sc.nextLine());
        
        System.out.println("Give me the last noun!");
        setNoun3(sc.nextLine());
    }
    
    public void printInstructions() {
        System.out.println("\tWelcome to madlibs Game\n\t"
                + "If you type in words we'll give you a story\n\t"
                + "Start in by typing in a Name");
    }
    
    public void putTheStoryTogether() {
        String Story;
        int a = Math.abs(rand.nextInt()) % 2;
        if(a == 0) {
            Story = "Jesse and her friend " +GetName() + " Went to disney wordls today! \n"
                + "they saw a " +GetNoun1()+" in the show at the magic kingdom\n"
                + "and ate a " +GetAdjective1()+ " feast for dinner. The next day I\n"
                + "ran " +GetAdverb() +" to meet the micky mouse in his " +GetNoun2() + "\n"
                + "and then at that night I gazed at the " +getRandomNumber() + " " +"\n"
                + GetAdjective2() +" Fireworks shooting from the " + GetNoun3() + ".";
        }
        else {
            Story = "Amanda and her frenimy " +GetName() + " went to the zoo last summer.\n"
                    + "They saw a " +GetNoun1()+ " and a tiny little " +GetNoun2()+ ", That night\n"
                    + "they decided to climb " +GetAdverb()+ " into the " +GetNoun3() + " to get\n"
                    + "a closer look. The Zoo was " +GetAdjective1()+ " at night but they didnt't care... \n"
                    + "until " +getRandomNumber()+ "  " + GetAdjective2() +" apes yelled in there faces,\n"
                    + "making amanda and "+GetName()+" sprint all the way back home" ;
        }
        SetStory(Story);
            
    }
    
    public void play() {
        TakeInput();
        setRandomNums();
        putTheStoryTogether();
        System.out.println(GetStory());
    }
    
    public static void main(String[] args) {
        
        MadLibs game = new MadLibs();
        game.printInstructions();
        game.play();
    }
}
