package java2;

public class CommandLine {
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
// Check the number of command line arguments
        if(args.length==3) {
// Display the values of individual arguments
            System.out.println("First Name is "+args[0]);
            System.out.println("Last Name is "+args[1]);
            System.out.println("Designation is "+args[2]);
        }
        else {
            System.out.println("Specify the First Name, Last Name, and Designation");
        }
    }

}
