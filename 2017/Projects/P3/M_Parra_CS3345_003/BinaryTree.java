/*
Mauricio Parra
CE 3345.003
Fall 2017
Project 3: Binary Tree manipulation
 */
package project3_2017;

public class BinaryTree 
{
    Node root = null;//head of tree
    
    public Node getRoot()//getroot for recursive functions
    {
        return root;
    }
    
    public BinaryTree()//empty constructor 
    {
        
    }
    //method to insert a new node into the tree, cur = root
    public Node insert(Node cur, Node newNode)
    {
        if (root == null)//if root is null then new node = root
        {
            root = newNode;
            return newNode;
        }
                    
        if (cur == null)//stopping case
            return newNode;
        else if (newNode.key == cur.key && cur.deleted == true)//if node is deleted, un delete
            cur.SetDeleted(false);
        else if (newNode.key < cur.key)//if node is less than current, go left
            cur.left = insert(cur.left,newNode);
        else if (newNode.key > cur.key)//if node is more than current, place right
            cur.right = insert(cur.right,newNode);
        return cur;
    }
    
    //method to lazy delete a node (marks it with false bool) 
    //we assume that contains will be called prior
    public void delete(Node cur,int key)
    {
        if (cur.key == key)//if key is found, delete bool = true
            cur.deleted = true;
        else if (key < cur.key)//if key is less than current, traverse left
            delete(cur.left,key);
        else if (key > cur.key)//if key is more than current, traverse right
            delete(cur.right,key);
        
    }
    
    //method to find the minimum key of the tree
    public Node findMin(Node cur)
    {
        if (cur == null)//if tree is empty
            return null;
        
        Node tmp = findMin(cur.left);//temp will traverse left
        
        if (tmp != null) return tmp;//once temp reaches end, return
        if (cur.deleted == false) 
            return cur;//if end is deleted, go to previous
        return findMin(cur.right);
        
    }
    
    //method to find the maximum key of the tree
    public Node findMax(Node cur)
    {
        if (cur == null)
            return null;//if tree is empty
        
        Node tmp = findMax(cur.right);//temp will travers right
        
        if (tmp != null) return tmp;//once temp reaches end, return
        if (cur.deleted == false)//if end is deleted, go to previous
            return cur;
        return findMax(cur.left);
                
    }
    
    //method to check if a key is contained within the tree
    public boolean contains(int key, Node root)
    {
        if (root == null)//if tree is empty
        {
            return false;
        }
        //if key is found and its not deleted or if left child or right child recursion
        return (root.key == key) && (root.deleted == false)
                || (contains(key,root.left)) || (contains(key,root.right));
    }
    
    //printing the tree in order
    public void inOrder(Node cur)
    {
        if (cur == null)//end case
            return;
        
        inOrder(cur.left);//starting with left child
        if (cur.deleted == true)
            System.out.print("  *" + cur.key);//if not deleted
        else
            System.out.print("  " + cur.key + " ");//if deleted
        
        inOrder(cur.right);//continue to right
    }
    
    //method to return the height of the tree
    public int height(Node cur)
    {
        if (cur == null)//end case
            return -1;
        else
        {//checking left and right height
            int lHeight = height(cur.left);
            int rHeight = height(cur.right);
            
            if (lHeight > rHeight)//whichever one is bigger
                return (lHeight + 1);
            else
                return (rHeight + 1);
        }
        
        
    }
    
    //method to return the total number of nodes including deleted
    public int numberOfNodes(Node cur)
    {
        
        if (cur == null)//end case
            return 0;
        if(cur.left == null && cur.right == null)//count 1 if its last node
            return 1;
        else//add the left and right nodes
            return (numberOfNodes(cur.left)) + (numberOfNodes(cur.right)) + 1;
        
    }
    
    //method to print both total and deleted  nodes
    public int print(Node cur, int n)
    {
       if (cur == null)//end case
           return 0;
       if (cur.left == null && cur.right == null && cur.deleted == true)//checking for deleted nodes
           return n + 1;
       else if (cur.left == null && cur.right == null & cur.deleted == false)//checking for normal nodes
           return n + 0;
       if (cur.deleted == true)//add to total if deleted found
           n = n + 1;
       else
           return print(cur.left, n) + print(cur.right, n);//return total
       return n;
    }
    
    //Node class
    public class Node
    {
        Node left;
        Node right;
        boolean deleted;
        int key;
        
        public Node()//empty constructor
        {
            deleted = false;
            key = 0;
            left = right = null;
        }
        
        public Node(boolean d, int k)//constructor
        {
            deleted = d;
            key = k;
            left = null;
            right = null;
        }
        
        public boolean IsDeleted()//check if deleted
        {
            return deleted;
        }
        public int GetKey()//get the key
        {
            return key;
        }
        public void SetDeleted(boolean d)//set deleted
        {
            deleted = d;
        }
                
    }
}