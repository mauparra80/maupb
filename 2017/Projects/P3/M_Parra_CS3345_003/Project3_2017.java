/*
Mauricio Parra
CE 3345.003
Fall 2017
Project 3: Binary Tree manipulation
 */
package project3_2017;
import java.util.Scanner;

public class Project3_2017 {

    
    public static void main(String[] args) 
    {
        Scanner kb = new Scanner(System.in);//open keyboard scanner
        BinaryTree tree = new BinaryTree();//initiate our tree
        boolean exit = false;//used to exit program
        int choice = 0;//user input
        while (exit == false)//control to exit
        {
            System.out.println("\n1: insert\n" +
                    "2: delete\n" +
                    "3: findMin\n" +
                    "4: findMax\n" +
                    "5: contains\n" +
                    "6: in order tree traversal\n" +
                    "7: Height\n" +
                    "8: number of nodes\n" +
                    "9: print tree\n" +
                    "0: exit");
            boolean inputError = true;//to exit error checking
            while (inputError)
            {
                
            try//error checking int
            {
                choice = kb.nextInt();
                inputError = false;
            }
            catch (Exception e)//if not int, print error and repeat
            {
                System.out.println("ERROR: Please enter a correct number");
                kb.next();
            }
            }
        
            switch (choice)
            {
                case 1://insert
                {
                    int leaf = checkInt(kb);//error checking
                    BinaryTree.Node root = tree.getRoot();//get root
                      
                    BinaryTree.Node newNode = tree.new Node(false, leaf);//create the node
                   
                    if (tree.contains(leaf, root) == false)//if it is not already in tree
                        tree.insert(root, newNode);//insert in tree
                    else                                    //else if it is in tree
                        System.out.println("key already exsists.");
                    break;
                }
                
                case 2://delete
                {
                    BinaryTree.Node root = tree.getRoot();//get root
                   int leaf = checkInt(kb);//error checking
                   if (tree.contains(leaf, root) == true)//if its in tree, delete
                    tree.delete(root, leaf);
                   else
                       System.out.println("Tree does not contain that key");
                   break;
                }
                
                case 3://find minimum
                {
                    BinaryTree.Node root = tree.getRoot();//get root
                    BinaryTree.Node min = tree.findMin(root);//call function
                    if (min != null)//if miniumum found, print
                        System.out.println("Minimum Value: " + min.GetKey());
                    else//if no minimum found
                        System.out.println("Tree is empty");
                    break;
                }
                
                case 4://find maximum
                {
                    BinaryTree.Node root = tree.getRoot();
                    BinaryTree.Node max = tree.findMax(root);//call function
                    if (max != null)//if maximum found
                        System.out.println("Maximum Value: " + max.GetKey());
                    else    //if no maximum found
                        System.out.println("tree is empty");
                    break;
                }
                
                case 5://contains a key
                {
                    BinaryTree.Node root = tree.getRoot();
                    int leaf = checkInt(kb);//error checking
                    if (tree.contains(leaf, root) == true)//does contain
                        System.out.println(leaf + " is contained in the tree");
                    else//does not contain
                        System.out.println(leaf + " is not contained in the tree");
                    break;
                }
                
                case 6://in order tree traversal
                {
                    BinaryTree.Node root = tree.getRoot();
                    tree.inOrder(root);//call traversal
                    System.out.println("\n");//print enter
                    break;
                }
                
                case 7:// height
                {
                    BinaryTree.Node root = tree.getRoot();
                    System.out.println("Tree Height: " + tree.height(root));  //call and print height
                    break;
                }
                
                case 8://number of nodes in tree
                {
                    BinaryTree.Node root = tree.getRoot();
                    int total = tree.numberOfNodes(root);//call function = total
                    System.out.println("Total Nodes: " + total);
                    break;
                }
                
                case 9://print tree
                {
                    BinaryTree.Node root = tree.getRoot();//print total and deleted
                    System.out.println("Total Nodes: " + tree.numberOfNodes(root));
                    System.out.println("Total Deleted Nodes: " + tree.print(root, 0));
                    break;
                }
                case 0:
                {
                    exit = true;//exit program
                    break;
                }
            }
        }
    }
    
    //fucntion to error check the user input
    public static int checkInt(Scanner kb)
    {
        boolean error = true;
        int leaf = 0;
        while (error)
                    {
                        System.out.println("please enter a number from 1 - 99");
                        try
                        {
                            leaf = kb.nextInt();
                            if(leaf > 99 || leaf < 1)//check if its within bounds
                            {
                                System.out.println("ERROR: integer exceeds bounds");
                            }
                            else
                                error = false;
                        }
                        catch (Exception e)//check if its an integer
                        {
                            System.out.println("ERROR: Please enter an integer");
                            kb.next();
                        }   
                    }
        return leaf;
    }
    
}

