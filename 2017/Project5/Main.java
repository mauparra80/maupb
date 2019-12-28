/*
Mauricio Parra
mxp160130
CS 2336.003
5/1/2017
 */
import java.util.*;
import java.io.*;
import Orders.*;
public class Main {

    
    public static void main(String[] args) throws FileNotFoundException 
    {
        totals countFinal = new totals();//ignore
        int[] auditorium1 = new int[3];
        int[] auditorium2 = new int[3];
        int[] auditorium3 = new int[3];
        
        Scanner f1 = new Scanner(new File("A1.txt"));//opening files for each auditorium
        int[] size1 = audSize(f1);                  //calling size function to get size of 
        Scanner f2 = new Scanner (new File("A2.txt"));//each auditorium
        int[] size2 = audSize(f2);
        Scanner f3 = new Scanner(new File("A3.txt"));
        int[] size3 = audSize(f3);
        
        int xrow = size1[0] + 1;//create size variables for our 2d String arrays
        int yseat = size1[1] + 1;
        char[][] a1 = new char[xrow][yseat];//make String array of size 
        f1 = new Scanner(new File("A1.txt"));//resetting the file
        a1 = readAuditorium(f1, a1);//read auditorium from file into respected arary
        xrow = size2[0] + 1;
        yseat = size2[1] + 1;
        char[][] a2 = new char[xrow][yseat];
        f2 = new Scanner(new File("A2.txt"));
        a2 = readAuditorium(f2,a2);
        xrow = size3[0] + 1;
        yseat = size3[1] + 1;
        char[][] a3 = new char[xrow][yseat];
        f3 = new Scanner(new File("A3.txt"));
        a3 = readAuditorium(f3,a3);
        
        //test
       
        /*
        printAuditorium(a1);
        System.out.println("");
        printAuditorium(a2);
        System.out.println("");
        printAuditorium(a3);
        System.out.println("");
        */
        
        Scanner kb = new Scanner (System.in);//create keyboard scanner
        Scanner sc = new Scanner (new File("userdb.txt"));//open file for data
        HashMap<String, ArrayList> map = new HashMap<String, ArrayList>();//create hashmap
        //ArrayList<order> orders = new ArrayList<order>();
        
        userData(sc, map);
        
        //hashmap created with usernames and passwords
        //now we get log in info, and check if its admin loging in
        boolean stay1 = true;
        boolean stay = true;
        String username= "";
        String password = "";
        String key = "";
        while (stay)//log in menu
        {
            stay = true;
            while (stay)
            {
            username = "";//reset uesername, pass, and key
            password = "";
            key = "";
            System.out.println("Please enter your username: ");
            username = kb.next();//get username
            int validateCounter = 1;
            stay1 = true;//reset stay1
            while (validateCounter < 4 && stay1)// if password is tried 3 times and stay is true
            {
            System.out.println("Please enter your Password: ");
            password = kb.next();//get pass
            key = username + " " + password;//make key
            stay1 = !map.containsKey(key);//if pass is false, stay1 = false
            validateCounter++;//password count
            if(stay1)//if pass does not exist, prompt
                System.out.println("Wrong Password, try again.");
            }
            if (username.equals("admin") && password.equals("123") && stay1 == false)//admin menu
            {
                boolean menuStay = true;
                while (menuStay)//admin menu 
                {
                    System.out.println("1. View Auditorium\n2. Print Report\n3. Exit");
                    int adminMenu = kb.nextInt();//get choice
                    switch(adminMenu)
                    {
                        case 1://view auditorium
                        {
                            System.out.println("1. Auditorium 1\n2. Auditorium 2\n3. Auditorium 3");
                            int input = kb.nextInt();
                            if(input == 1)
                                printAuditorium(a1);//view aud 1
                            else if(input == 2)
                                printAuditorium(a2);//view aud 2
                            else if(input == 3)
                                printAuditorium(a3);//view aud 3
                            System.out.println("\n");
                            break;
                        }
                        case 2://print report
                        {
                            printReport(countFinal, auditorium1, auditorium2, auditorium3, a1,a2,a3);
                            break;
                        }
                        case 3://end program
                        {
                            stay = false;
                            menuStay = false;
                            break;
                        }
                    }
                            
                }
            }
            else if(!username.equals("admin") && stay1 == false)//user menu
            {
                boolean menuStay = true;
                while (menuStay)
                {
                    System.out.println("1. Reserve Seats\n2. View Orders\n" +//print prompt
                            "3. Update Order\n4. Display Receipt\n5. Log Out");
                    int userMenu = kb.nextInt();
                    switch(userMenu)
                    {
                        case 1://reserve seats
                        {
                            System.out.println("1. Auditorium 1\n2. Auditorium 2\n3. Auditorium 3");
                            int input = kb.nextInt();//choose auditorium
                            switch(input)
                            {
                                case 1: //get auditorium, check seats, reserve
                                {
                                    //create new order
                                    ArrayList<order> orders = map.get(key);//we have the arraylist of the username
                                    int orderNumber = orders.size();//what order we are on
                                    
                                    
                                    order currentOrder = new order();//conatins, aud, totals, seat type
                                    printAuditorium(a1);//print aud
                                    seatType(kb,a1, orders, currentOrder, 1,orderNumber,countFinal, false);//call function
                                    map.put(key, orders);//put the order in the map
                                    //check how many are of each are reserved
                                    int[] temp = currentOrder.getTotals();//get totals 
                                    auditorium1[0] += temp[0];//this is used to get adult,senior,child totals per file
                                    auditorium1[1] += temp[1];
                                    auditorium1[2] += temp[2];
                                    PrintWriter p = new PrintWriter(new File("A1.txt"));//write back to file
                                    print(p,a1);
                                    p.close();
                                    break;
                                }
                                case 2:
                                {
                                    //create new order
                                    ArrayList<order> orders = map.get(key);//we have the arraylist of the username
                                    int orderNumber = orders.size();
                                    
                                    
                                    order currentOrder = new order();//conatins, aud, totals, seat type
                                    printAuditorium(a2);
                                    seatType(kb,a2, orders, currentOrder, 2,orderNumber,countFinal, false);
                                    map.put(key, orders);
                                     int[] temp = currentOrder.getTotals();
                                    auditorium2[0] += temp[0];
                                    auditorium2[1] += temp[1];
                                    auditorium2[2] += temp[2];
                                    PrintWriter p = new PrintWriter(new File("A2.txt"));
                                    print(p,a2);
                                    p.close();
                                    break;
                                }
                                case 3:
                                {
                                     //create new order
                                    ArrayList<order> orders = map.get(key);//we have the arraylist of the username
                                    int orderNumber = orders.size();
                                    
                                    
                                    order currentOrder = new order();//conatins, aud, totals, seat type
                                    printAuditorium(a3);
                                    seatType(kb,a3, orders, currentOrder, 3,orderNumber,countFinal, false);
                                    map.put(key, orders);
                                     int[] temp = currentOrder.getTotals();
                                    auditorium3[0] += temp[0];
                                    auditorium3[1] += temp[1];
                                    auditorium3[2] += temp[2];
                                    PrintWriter p = new PrintWriter(new File("A3.txt"));
                                    print(p,a3);
                                    p.close();
                                    break;
                                }
                            }
                            break;
                        }
                        case 2://view orders
                        {
                            
                            ArrayList<order> orders = map.get(key);//create arraylist
                            viewOrders(orders);//call view orders to view orders
                            break;
                        }
                        case 3://update order
                        {
                            System.out.println("Which order do you wish to update?");
                            ArrayList<order> orders = map.get(key);//what file to update
                            viewOrders(orders);
                            int choice = kb.nextInt();
                            
                            order currentOrder = orders.get(choice - 1);//get order
                            int auditorium = currentOrder.getAuditorium();
                            boolean orderStay = true;
                            while (orderStay)
                            {
                                System.out.println("1. Add tickets to order\n2. Delete tickets from order\n" +
                                "3. Cancel Order\n4.Exit");//what to do with order
                                int choice1 = kb.nextInt();
                                switch(choice1)
                                {
                                    case 1: //add tickets to order
                                    {
                                        
                                        
                                        if(auditorium == 1)//if order is in aud 1
                                        {
                                            printAuditorium(a1);//print aud
                                        seatType(kb, a1,orders,currentOrder,auditorium,choice - 1,countFinal, true);
                                         int[] temp = currentOrder.getTotals();//get new seats and update totals
                                        auditorium1[0] += temp[0];
                                        auditorium1[1] += temp[1];
                                        auditorium1[2] += temp[2];
                                        }
                                        else if(auditorium == 2)//if order is in aud 2
                                        {
                                            printAuditorium(a2);
                                        seatType(kb, a2,orders,currentOrder,auditorium,choice - 1,countFinal, true);
                                         int[] temp = currentOrder.getTotals();
                                        auditorium2[0] += temp[0];
                                        auditorium2[1] += temp[1];
                                        auditorium2[2] += temp[2];
                                        }
                                        else if(auditorium == 3)//if order is in aud3
                                        {
                                            printAuditorium(a3);
                                        seatType(kb, a3,orders,currentOrder,auditorium,choice - 1, countFinal, true);
                                         int[] temp = currentOrder.getTotals();
                                        auditorium3[0] += temp[0];
                                        auditorium3[1] += temp[1];
                                        auditorium3[2] += temp[2];
                                        }
                                        map.put(key, orders);//update map and print to file
                                        PrintWriter p = new PrintWriter(new File("a2.txt"));
                                        print(p,a2);
                                        p.close();
                                        break;
                                    }
                                    case 2://delete tickets from order
                                    {
                                        boolean deleteTicket = true;
                                        while(deleteTicket)
                                        {
                                            int[] Exit = viewSeats(currentOrder,kb);//exit value
                                            if(Exit[1] == -1)//if exit chosen exit
                                            {
                                                deleteTicket = false;
                                                break;
                                            }
                                            else
                                            {
                                            int type = currentOrder.getArray(Exit);//delete the order
                                            if(auditorium == 1)
                                            {
                                            a1[Exit[0]][Exit[1]] = '.';//update array
                                            if(type == 1)//type = audlt0 senior1 and child2
                                            {//update totals according to order
                                                auditorium1[0] -= 1;
                                            }
                                            else if(type == 2)
                                            {
                                                auditorium1[1] -= 1;
                                            }
                                            else if(type == 3)
                                            {
                                                auditorium1[2] -= 1;
                                            }
                                            a1[Exit[0]][Exit[1]] = '.';
                                            }
                                            
                                            if(auditorium == 2)
                                            {
                                                if(type == 1)
                                            {
                                                auditorium2[0] -= 1;
                                            }
                                            else if(type == 2)
                                            {
                                                auditorium2[1] -= 1;
                                            }
                                            else if(type == 3)
                                            {
                                                auditorium2[2] -= 1;
                                            }
                                            a2[Exit[0]][Exit[1]] = '.';
                                            }
                                            
                                            if(auditorium == 3)
                                            {
                                                if(type == 1)
                                            {
                                                auditorium3[0] -= 1;
                                            }
                                            else if(type == 2)
                                            {
                                                auditorium3[1] -= 1;
                                            }
                                            else if(type == 3)
                                            {
                                                auditorium3[2] -= 1;
                                            }
                                            a3[Exit[0]][Exit[1]] = '.';
                                            }
                                            if(currentOrder.getTotalSeats() == 0)
                                            {
                                                orders.remove(choice - 1);//if order has nothing inside, remove it
                                                deleteTicket = false;
                                            }
                                            }
                                        }
                                        break;
                                    }
                                    case 3://remove order
                                    {
                                        boolean deleteTicket = true;
                                        while(deleteTicket)
                                        {
                                            if(auditorium == 1)//in aud 1
                                            {
                                            int[] temp = currentOrder.getTotals();//update totals
                                        auditorium1[0] -= temp[0];
                                        auditorium1[1] -= temp[1];
                                        auditorium1[2] -= temp[2];
                                            removeOrder(currentOrder,a1);//remove the order
                                            }
                                            if(auditorium == 2)//in aud 2
                                            {
                                                int[] temp = currentOrder.getTotals();
                                        auditorium2[0] -= temp[0];
                                        auditorium2[1] -= temp[1];
                                        auditorium2[2] -= temp[2];
                                            removeOrder(currentOrder,a2);
                                            }
                                            if(auditorium == 3)//in aud 3
                                            {
                                                int[] temp = currentOrder.getTotals();
                                        auditorium3[0] -= temp[0];
                                        auditorium3[1] -= temp[1];
                                        auditorium3[2] -= temp[2];
                                            removeOrder(currentOrder,a3);
                                            }
                                            if(currentOrder.getTotalSeats() == 0)
                                            {
                                                orders.remove(choice - 1);
                                                deleteTicket = false;
                                            }
                                        }
                                        break;
                                    }
                                    case 4:
                                    {
                                        orderStay = false;
                                        break;
                                    }
                                }
                                    
                            }
                            break;
                        }
                        case 4://display receipt
                        {
                            ArrayList<order> orders = map.get(key);
                            displayReceipt(orders);//call function
                            break;
                        }
                        case 5://exit
                        {
                            menuStay = false;
                            break;
                        }
                    }
                }
            }
            
            }
 
        }
        
    }
    
    public static void userData(Scanner sc, HashMap map)//read user data from file into hashmap
    {
        String usernamePass;//temp
        while (sc.hasNextLine())//while lines available
        {
        ArrayList<order> temp = new ArrayList<order>();//create an arraylist
        usernamePass = sc.nextLine();//get username and password
        map.put(usernamePass, temp);//put the username and password as key
        }                           //put temp array as array
    }
    
    public static int[] audSize(Scanner f1)//function to get size of auditorium
    {
        int row = 0;//initialise counters
        int seat = 0;
        while (f1.hasNextLine())//itirate
        {
            String temp = f1.nextLine();//coopy line into a string
            seat = temp.length();//get size of string = column size
            row++;//itirations = row size
        }
        int[] ret = {row,seat};//return array 
        return ret;
    }
    
    public static char[][] readAuditorium(Scanner f1, char[][] a1)
    {//function to read auditoriums into arrays
        
        int j = 1;//itirator
        int headerNum = 1;//setting up headers
        char[] str;// char array to hold the line of symbols
        a1[0][0] = ' ';//space at 0 0
        
        for (int x = 1; x < a1[0].length;x++)// saving header into array
        {
            if (headerNum == 10)
                headerNum = 0;
            a1[0][x] = (char)headerNum;
            headerNum++;
        }
        
        headerNum = 1;// re initializing header
        while(f1.hasNextLine())
        {
            String temp = f1.nextLine();//get line of symbols into string
            str = temp.toCharArray();//convert string into char array
            a1[j][0] = (char)headerNum;//row header
            
            for (int i = 1; i < (temp.length() + 1); i++)//input each symbol into the array
            {
                a1[j][i] = str[(i - 1)];
            }
            j++;
            headerNum++;
        }
        return a1;
    }
    
    public static void printAuditorium(char[][] a1)//prints the auditorium
    {
        
        for(int i = 0; i < a1.length; i++)//row
        {
            System.out.println("");//space for title
            for(int j = 0; j < a1[0].length; j++)//column
            {
                if(i == 0 ^ j == 0)//xor statement for title
                {
                    int temp = a1[i][j];// print auditorium
                    System.out.print(temp);
                }    
                else
                    System.out.print(a1[i][j]);
            }
        }
    }
    
    //Main function that calls other function, gets type of order, position, and reserves, calls checkSeats for best reservation
    public static void seatType(Scanner kb, char[][] a1,ArrayList<order> orders, order currentOrder,int auditorium,int orderNumber, totals countFinal, boolean edit)
    {
        System.out.println("\nPlease enter the number of Adult tickets you wish to purchase: ");//number of adult/senior/child
        int adult = kb.nextInt();
        System.out.println("Please enter the number of Senior tickets you wish to purchase: ");
        int senior = kb.nextInt();
        System.out.println("Please enter the number of Child tickets you wish to purchase: ");
        int child = kb.nextInt();
        
        int deleteAdult = 0;//set counters
        int deleteSenior = 0;
        int deleteChild = 0;
        int total = adult + senior + child;//total tickets
        boolean open = true;//is spot open
        int counter = adult;
        if(adult != 0)//if ticket type does not = 0, prompt for ticket specifications
        {
            System.out.println("\nADULT TICKET/S");
            while(counter > 0 && open)//subtract from adult tickets to register all
            {
                open = checkSeats(kb,a1,auditorium,currentOrder,1,countFinal);//true = open and added to hashtable, false = reserved
                if (open)
                {
                counter--;//decrement counter
                deleteAdult++;//delete 1 from total adult
                }
                else
                {
                    break;
                }
                //call funtion to print prompt and check seats
                //if function seat is open, continue with next seat
                //if function seat is reserved, return to this menu and call best seats
                //if best seats is not chosen, return to menu, if chosen, reserve
                
                
            }
        }
        counter = senior;//repeat steps with senior
        if(senior != 0 && open)
        {
            System.out.println("\nSENIOR TICKET/S");
            while(counter > 0 && open)//subtract from adult tickets to register all
            {
                open = checkSeats(kb,a1,auditorium,currentOrder,2,countFinal);//true = open and added to hashtable, false = reserved
                if (open)
                {
                counter--;
                deleteSenior++;
                }
                else
                {
                    break;
                }
            }
        }
        
        counter = child;//repeat steps with child
        if(child != 0 && open)
        {
            System.out.println("\nCHILD TICKET/S");
            while(counter > 0 && open)//subtract from adult tickets to register all
            {
                open = checkSeats(kb,a1,auditorium,currentOrder,3,countFinal);//true = open and added to hashtable, false = reserved
                if (open)
                {
                counter--;
                deleteChild++;
                }
                else
                {
                    break;
                }
            }
        }
        
        if(open)//if all spots reserved where open, edit array
        {
            //write adult seats to array reserved
            for (int a = 0; a < adult; a++)
            {
                int[] temp = currentOrder.getAdultTickets(a);//edit array from order
                a1[temp[0]][temp[1]] = '#';//fill in reserved
            }
            for (int a = 0; a < senior; a++)
            {
                int[] temp = currentOrder.getSeniorTickets(a);
                a1[temp[0]][temp[1]] = '#';
            }
            for (int a = 0; a < child; a++)
            {
                int[] temp = currentOrder.getChildTickets(a);
                a1[temp[0]][temp[1]] = '#';
            }
            
            System.out.println("Your tickets have been reserved!");
        }
        
        //if one of the above is already reserved, skip to finding best seats
        if(!open)
        {
        int[] points = bestSeats(a1, total);
        int row = points[0];//starting seat of best seat
        int seat = points[1];
        
        if(row == -1) //if no seats found delete the nodes that are not used
        {
            System.out.println("No best seats found for number of tickets entered");
            for(int a = 0; a < deleteAdult; a++)
            {
                currentOrder.deleteAdult();//delete the node that was not used
                countFinal.decrementAdult();//ignore
            }
            for(int a = 0; a < deleteSenior; a++)
            {
                currentOrder.deleteSenior();
                countFinal.decrementSenior();
            }
            for(int a = 0; a < deleteChild; a++)
            {
                currentOrder.deleteChild();
                countFinal.decrementChild();
            }
            if(currentOrder.getTotalSeats() == 0)//if no tickets, delete node
                orders.remove(orderNumber);
        }
        else//else if seat not available but best seats found
        {
        counter = total;
        int counterChild = child;
        int counterSenior = senior;
        int counterAdult = adult;
        
        for(int a = 0; a < deleteAdult; a++)//erase unused nodes
            {
                currentOrder.deleteAdult();
                countFinal.decrementAdult();
            }
            for(int a = 0; a < deleteSenior; a++)
            {
                currentOrder.deleteSenior();
                countFinal.decrementSenior();
            }
            for(int a = 0; a < deleteChild; a++)
            {
                currentOrder.deleteChild();
                countFinal.decrementChild();
            }
        
        currentOrder.setTotalSeats(0);
        System.out.println("\nThe seat entered is not available, best available seats are");
        while (counter > 0 )
        {
            for(int a = 0; a < counterAdult; a++)//print best seats
            {
                System.out.print("Adult (" + row + "," + seat + ")   ");
                currentOrder.addAdultTicket(row, seat);
                countFinal.incrementAdult();
                seat++;
                counter--;
                
            }
            for(int s = 0; s < counterSenior; s++)
            {
                System.out.print("Senior (" + row + "," + seat + ")   ");
                currentOrder.addSeniorTicket(row, seat);
                countFinal.incrementSenior();
                seat++;
                counter--;
                
            }
            for(int c = 0; c < counterChild; c++)
            {
                System.out.print("Child (" + row + "," + seat + ")   ");
                currentOrder.addChildTicket(row, seat);
                countFinal.incrementChild();
                seat++;
                counter--;
                
            }
        }
        
        System.out.println("Would you like to reserve these seats? Press (Y/N) and enter");
        String input = kb.next();//reserve seats? yes/no
        boolean error1 = true;
        seat = points[0];
        while(error1)
        {
            if (Objects.equals(input, "Y") || Objects.equals(input, "y")) //if yes
            {
               error1 = false; 
               //change array
               for(int i = 0; i < total; i++)//reserve seats in auditorium array
               {
                   a1[row][seat] = '#';
                   seat++;
               }
               currentOrder.setAuditorium(auditorium);//update order
               System.out.println("your seats have been reserved!");
        
            }
            else if (Objects.equals(input, "N") || Objects.equals(input, "n")) //if user does not want to reserve, return
            {                                                                   //CORRECTION ADDED n
                error1 = false;

                for(int a = 0; a < deleteAdult; a++)
            {
                currentOrder.deleteAdult();
                countFinal.decrementAdult();
            }
            for(int a = 0; a < deleteSenior; a++)
            {
                currentOrder.deleteSenior();
                countFinal.decrementSenior();
            }
            for(int a = 0; a < deleteChild; a++)
            {
                currentOrder.deleteChild();
                countFinal.decrementChild();
            }
            if(currentOrder.getTotalSeats() == 0)
                orders.remove(orderNumber);
            }
            else
                System.out.println("invalid input");
            
                
        }
    }
    }
        //if we are not editing an order
        if(!edit)
            orders.add(currentOrder);
    }
    
    
    public static boolean checkSeats(Scanner kb, char[][] a1, int auditorium, order currentOrder, int type, totals countFinal)
    {
      
      int row = 0;  //initialise variables
      int seat = 0;
      int ticketNum = 0;
      int feedback = 0;
      boolean error = true;
      while (error == true) //while statement if error is true keep looping
      {
        System.out.println("please enter the row: "); //promt to enter row
        try
        {
        row = kb.nextInt();   //try to read an int
        }
        catch(InputMismatchException ex)    //throw exception if not int
        {
            System.out.println("InputMismatchException");  
             kb.next();//COORECTION ADDED LINE*****
           //print error
        }
                
                
        if ((row == (int)row) && row > 0 && row < a1.length)    //if row is within limits
        {
               error = false; //call validate row in linklist
        }
        if (error == true)
            System.out.println("input error");  //if error is still true, output error msg
      }
    
      boolean open = false;
      error = true;//re initialise error
      while (error == true)
      {
          System.out.println("please enter the seat number: "); //input seat number
          try
          {
              seat = kb.nextInt();    //try catch
          }
          catch(InputMismatchException ex)
          {
              System.out.println("InputMismatchException");
              kb.next();
          }
          
          if ((seat == (int)seat) && seat > 0 && seat < a1[0].length) //if seat is within bounds
          {
                error = false;
                open = validateSeat(a1, row, seat);//call validate seat if true, then seat is open
          }
          
          
          
          //variables, boolean open, int row, int seat
          //if row is good, seat is good, and seat is open, add to object
          //create array list of orders
          if(open)
          {
          if(type == 1)
          {
          currentOrder.setAuditorium(auditorium);//add the auditorium to order
          currentOrder.addAdultTicket(row, seat);
          countFinal.incrementAdult();
          }
          else if (type == 2)
          {
              currentOrder.setAuditorium(auditorium);//add the auditorium to order
              currentOrder.addSeniorTicket(row, seat);
              countFinal.incrementAdult();
          }
          else if(type == 3)
          {
              currentOrder.setAuditorium(auditorium);//add the auditorium to order
              currentOrder.addChildTicket(row, seat);
              countFinal.incrementAdult();
          }
          }
          //if row is good, seat is good, and seat is reserved, go straight to best seats
          
          //if row or seat is not good, loop again untill a valid number is entered
      }
      return open;
     
  
    }
    public static boolean validateSeat(char[][] a1, int row, int seat)
    {
        boolean open = false;
        if (a1[row][seat] == '.')
            open = true;
        
        return open;
    }
    
    public static int[] bestSeats(char[][] a1, int ticketNum)
    {
        int rowCount = a1.length;
        int seatCount = a1[0].length;
         double vertMiddle;//vertical middle, 
         double horiMiddle;//horizontal middle 
         boolean vertiEven;// if even true
         boolean horiEven;// if even true
        if ((rowCount % 2)==0)// if even
        {
            vertMiddle = (rowCount / 2);   //divide by 2 to get middle 
            vertiEven = true;
        }
        else // if odd
        {
            vertMiddle = (rowCount / 2) + 1;    //if odd just divide by 2 and add 1
            vertiEven = false;
        }
        
        if ((seatCount & 2)==0)//if even
        {
            horiMiddle = (seatCount / 2);
            horiEven = true;
        }
        else // if odd
        {
            horiMiddle = (seatCount / 2) + 1;
            horiEven = false;
        }
        double y = horiMiddle;  //temps
        double x = vertMiddle;  //middle of the graph
        
        int[] points = validateTicketNum(ticketNum, a1, x, y);
        return points;
        
        
        
    }
    
    public static int[] validateTicketNum(int ticketNum, char[][] a1, double x, double y)
    {
        double shortestD = 100;
        double distance;
        int counter = 0;
        int bestx = -1;
        int besty = -1;
        for(int i = 0; i < ticketNum; i++)
        {
            for (int row = 1; row < a1.length; row++)
            {
                counter = 0;
                for (int seat = 1; seat < a1[row].length; seat++)
                {
                    
                    if (a1[row][seat] == '.')
                    {
                        counter++;
                    }
                    else if (a1[row][seat] == '#')
                    {
                        counter = 0;
                    }
                    if (counter == ticketNum)//if the set of seats = number of tickets, check distance
                    {
                        double x1 = row;
                        double y1 = seat;
                        distance = Math.sqrt(((x-x1)*(x-x1)) + ((y-y1)*(y-y1)));  //distance formula
                        if (distance < shortestD)
                        {
                            shortestD = distance;
                            bestx = row;
                            besty = seat -(ticketNum - 1);
                        }
                    }
                }
            }
        }
        int[] array = {bestx,besty};
        return array;
    }
    
    //function to print back to file
    public static void print(PrintWriter p, char[][] a1)
    {
        int space = 0;
        for(int i = 1; i < a1.length; i++)
        {
            for(int j = 1; j < a1[0].length; j++)
            {
                p.print(a1[i][j]);
            }
            if(space <= a1.length - 1)
                p.println("");
        }
    }
    
    //function to view orders on username file
    public static void viewOrders(ArrayList<order> orders)
    {
        int size = orders.size();
        for(int i = 0; i < size; i++)
        {
            order temp = orders.get(i);//get order for i 
            System.out.println("Order " + (i + 1));//order number
            System.out.println("\tAuditorium: " + temp.getAuditorium());//print auditorium
            System.out.println("\tTotal Tickets: " + temp.getTotalSeats());//print total seats
            for (int a = 0; a < temp.getAdultSize(); a++)
            {
                int[] points = temp.getAdultTickets(a);
                System.out.println("\t\tAdult (" + points[0] + "," + points[1] + ")");//print total adult
            }
            for (int a = 0; a < temp.getSeniorSize(); a++)
            {
                int[] points = temp.getSeniorTickets(a);
                System.out.println("\t\tSenior (" + points[0] + "," + points[1] + ")");//print total senior
            }
            for (int a = 0; a < temp.getChildSize(); a++)
            {
                int[] points = temp.getChildTickets(a);
                System.out.println("\t\tChild (" + points[0] + "," + points[1] + ")");//print total child
            }
            
        }
        
    }
    
    //function to view the seats to see waht to add/delete
    public static int[] viewSeats(order temp, Scanner kb)
    {
        int counter = 1;
        for (int a = 0; a < temp.getAdultSize(); a++)//itirate
            {
                int[] points = temp.getAdultTickets(a);//print adult seats
                System.out.println("\t\t" + counter + ".Adult (" + points[0] + "," + points[1] + ")");
                counter++;
            }
            for (int a = 0; a < temp.getSeniorSize(); a++)
            {
                int[] points = temp.getSeniorTickets(a);//print senior seats
                System.out.println("\t\t" + counter + ".Senior (" + points[0] + "," + points[1] + ")");
                counter++;
            }
            for (int a = 0; a < temp.getChildSize(); a++)
            {
                int[] points = temp.getChildTickets(a);//print child seats
                System.out.println("\t\t" + counter + ".Child (" + points[0] + "," + points[1] + ")");
                counter++;
            }
            System.out.println("\t\t" + counter + ".Exit");//print exit
            int input = kb.nextInt();
            
            
            //now that we have input corresponding to the number of seat to remove/add
            //repeate process to find what seat to remove/add
            if(input == counter)
            {
                int[] returner = {input,-1};
                return returner;
            }
            counter = 1;
            int[] pointsFinal = null;
        for (int a = 0; a < temp.getAdultSize(); a++)//check adult
            {
                int[] points = temp.getAdultTickets(a);
                if(counter == input)//if the seat = our chosen seat, set as final points to return
                    pointsFinal = points;
                counter++;
            }
            for (int a = 0; a < temp.getSeniorSize(); a++)//check senior
            {
                int[] points = temp.getSeniorTickets(a);
                if(counter == input)
                    pointsFinal = points;
                counter++;
            }
            for (int a = 0; a < temp.getChildSize(); a++)//check child
            {
                int[] points = temp.getChildTickets(a);
                if(counter == input)
                    pointsFinal = points;
                counter++;
            }
            return pointsFinal;
            
    }
    
    
    //function to remove a whole order
    public static void removeOrder(order currentOrder, char[][] a1)
    {
        int adultSize = currentOrder.getAdultSize();
        int seniorSize = currentOrder.getSeniorSize();
        int childSize = currentOrder.getChildSize();
        for(int a = 0; a < adultSize; a++)//remove all adult and update
        {
            int[] temp = currentOrder.getAdultTickets(a);
            a1[temp[0]][temp[1]] = '.';
        }
        for(int a = 0; a < seniorSize; a++)//remove all senior and update
        {
            int[] temp = currentOrder.getSeniorTickets(a);
            a1[temp[0]][temp[1]] = '.';
        }
        for(int a = 0; a < childSize; a++)//remove all child and update
        {
            int[] temp = currentOrder.getChildTickets(a);
            a1[temp[0]][temp[1]] = '.';
        }
        
    }
    
    //fucntion to display the receipt of orders
    public static void displayReceipt(ArrayList<order> orders)
    {//display order1, auditorium, seats
        int size = orders.size();
        for(int i = 0; i < size; i++)
        {
            order temp = orders.get(i);//display
            System.out.println("Order " + (i + 1));
            System.out.println("\tAuditorium: " + temp.getAuditorium());
            System.out.println("\tTotal Tickets: " + temp.getTotalSeats());
            System.out.println("\t\tTotal Adult Tickets: " + temp.getTotalAdult());
            System.out.println("\t\tTotal Senior Tickets: " + temp.getTotalSenior());
            System.out.println("\t\tTotal Child Tickets: " + temp.getTotalChild());
        }
        System.out.println("Total Orders: " + size);
    }
    
    
    //function to display the admin report
    public static void printReport(totals countFinal, int[] auditorium1, int[] auditorium2, int[] auditorium3, char[][] a1,char[][] a2,char[][] a3)
    {
        //header labels
        System.out.println("\t\t\tOpen\t\tReserved\tAdult\t\tSenior\t\tChild\t\tSales");
        double sales1 = 0;
        int totalOpen1 = 0;
        int totalRes1= 0;
        
        //auditorium 1
        sales1 = ((auditorium1[0] * 10) + (auditorium1[1] * 7.50) + (auditorium1[2] * 5.25));//aud 1 sales
        totalOpen1 = 0;
        totalRes1 = 0;
        for(int i = 1; i < a1.length; i++)// get aud 1 total open and res
        {
            for(int j = 1; j < a1[0].length; j++)
            {
                if(a1[i][j] == '.')
                    totalOpen1++;
                else if(a1[i][j] == '#')
                    totalRes1++;
            }
        }//now print it out to the row
        System.out.println("Auditorium1\t\t" + totalOpen1 + "\t\t" + totalRes1 + "\t\t" + auditorium1[0] + "\t\t" +
                auditorium1[1] + "\t\t" + auditorium1[2] + "\t\t" + sales1);
        
        //aud 2
        //repeat steps with auditorium 2
        double sales2 = 0;
        int totalOpen2 = 0;
        int totalRes2 = 0;
        sales2 = ((auditorium2[0] * 10) + (auditorium2[1] * 7.50) + (auditorium2[2] * 5.25));
        totalOpen2 = 0;
        totalRes2 = 0;
        for(int i = 1; i < a2.length; i++)
        {
            for(int j = 1; j < a2[0].length; j++)
            {
                if(a2[i][j] == '.')
                    totalOpen2++;
                else if(a2[i][j] == '#')
                    totalRes2++;
            }
        }
        
        System.out.println("Auditorium2\t\t" + totalOpen2 + "\t\t" + totalRes2 + "\t\t" + auditorium2[0] + "\t\t" +
                auditorium2[1] + "\t\t" + auditorium2[2] + "\t\t" + sales2);
        
        //aud3
        double sales3 = 0;
        int totalOpen3 = 0;
        int totalRes3 = 0;
        sales3 = ((auditorium3[0] * 10) + (auditorium3[1] * 7.50) + (auditorium3[2] * 5.25));
        totalOpen3 = 0;
        totalRes3 = 0;
        for(int i = 1; i < a3.length; i++)
        {
            for(int j = 1; j < a3[0].length; j++)
            {
                if(a3[i][j] == '.')
                    totalOpen3++;
                else if(a3[i][j] == '#')
                    totalRes3++;
            }
        }
        
        System.out.println("Auditorium3\t\t" + totalOpen3 + "\t\t" + totalRes3 + "\t\t" + auditorium3[0] + "\t\t" +
                auditorium3[1] + "\t\t" + auditorium3[2] + "\t\t" + sales3);
        
        //totals
        //calculate totals from all auditorium
        double totalSales = sales1 + sales2 + sales3;
        int totalOpen = totalOpen1 + totalOpen2 + totalOpen3;
        int totalRes = totalRes1 + totalRes2+ totalRes3;
        int totalAdult = auditorium1[0] + auditorium2[0] + auditorium3[0];
        int totalSenior = auditorium1[1] + auditorium2[1] + auditorium3[1];
        int totalChild = auditorium1[2] + auditorium2[2] + auditorium3[2];//print totals
        System.out.println("totals\t\t\t" + totalOpen + "\t\t" + totalRes + "\t\t" + totalAdult + "\t\t" +
                totalSenior + "\t\t" + totalChild + "\t\t" + totalSales);
        
    }
    
}





 class totals//ignore not used.
    {
        public totals()
        {
            adult = 0;
            senior = 0;
            child = 0;
            seats = 0;
        }
        int adult;
        int senior;
        int child;
        int seats;
        
        public void incrementAdult()
        {
            adult++;
            seats++;
        }
        public void decrementAdult()
        {
            adult--;
            seats--;
        }
        public void incrementChild()
        {
            child++;
            seats++;
        }
        public void decrementChild()
        {
            child--;
            seats--;
        }
        public void incrementSenior()
        {
            senior++;
            seats++;
        }
        public void decrementSenior()
        {
            senior--;
            seats--;
        }
               
    }