/*
Mauricio Parra
CS 3345.003
Fall 2017
Project 5: different pivot selection in quicksort
 */

        
package edu.utdallas.cs3345.project5;
import java.util.*;
import java.time.Duration;
import java.util.concurrent.ThreadLocalRandom;
public class QuickSorter
        
{
    private QuickSorter() {}
    
    //main method that will be called, calls quicksort
    public static <E extends Comparable<E>> Duration timedQuickSort (ArrayList<E> list, PivotStrategy pivotStrategy)
    {
        if (list == null || pivotStrategy == null)//checking if null
            throw new NullPointerException();
        
        long startTime = System.nanoTime();//starting counter
        
        //switch statement to control each pivot
        switch(pivotStrategy)
        {
            case FIRST_ELEMENT:
            {
                quickSort((ArrayList<Integer>) list, pivotStrategy.FIRST_ELEMENT);
                break;
            }
                
            case RANDOM_ELEMENT:
            {
                quickSort((ArrayList<Integer>) list, pivotStrategy.RANDOM_ELEMENT);
                break;
            }
            
            case MEDIAN_OF_THREE_ELEMENTS:
            {
                quickSort((ArrayList<Integer>) list, pivotStrategy.MEDIAN_OF_THREE_ELEMENTS);
                break;
            }
            
            case MEDIAN_OF_THREE_RANDOM_ELEMENTS:
            {
                quickSort((ArrayList<Integer>) list, pivotStrategy.MEDIAN_OF_THREE_RANDOM_ELEMENTS);
                break;
            }
                
                
        }
        long totalTime = System.nanoTime() - startTime;//for total time
        return Duration.ofNanos(totalTime);//return the time it took to sort
    }
    
    //method to create an arraylist of given size with random integers
    public static ArrayList<Integer> generateRandomList(int size)
    {
        if(size < 0)//if the size is negative
            throw new IllegalArgumentException();
        
        ArrayList<Integer> list = new ArrayList<>(size);//create instance
        final int max = 2147483647;//max integer
        Random random = new Random();//creating random object
        for (int i = 0; i < size; i++)//itirate through the array
        {
            list.add(i, random.nextInt());//add a random number to each spot
        }
    return list;
    }
    
    //main algorithm. partition wil be calculated inother methods each time we need it. calls quicksorthelper
    public static void quickSort(ArrayList<Integer> list, PivotStrategy pivot)
    {
     int size = list.size();//get size
     int leftP = 0;//left most pointer
     int rightP = size-1;//right most pointer
     quickSortHelper(leftP,rightP,pivot,list);//calls helper
    }
    
    //quick sort helper function to recurse
    public static void quickSortHelper(int left, int right, PivotStrategy strat, ArrayList<Integer> list)
    {
        int a = left;//create temps
        int b = right;
        int pivot = list.get(pivotFinder(strat, list, left, right));//calls pivot given the strategy
        
        while (a <= b)
        {
            while (list.get(a) < pivot)//getting right pointer to be at right is less than pivot
                a++;
            while (list.get(b) > pivot)//left pointer needs to be at a left is less than pivot
                b--;
            
            if (a <= b)//if left is larger than pivot and right is less
            {
                int temp = list.get(a);//swap both left and right and increment
                list.set(a, list.get(b));
                list.set(b,temp);
                a++;
                b--;
            }
            
            
        }
        if (left < b)//recurse through new left portion
            quickSortHelper(left,b,strat,list);
        if (a < right)//recurse through new right portion
            quickSortHelper(a,right,strat,list);
    }
    

    
    //method to find the pivot given the strategy returns the index of pivot
    public static int pivotFinder(PivotStrategy pivot, ArrayList<Integer> list, int left, int right)
    {
       switch(pivot)
               {
                   case FIRST_ELEMENT:
                   {
                       return left;//returns the left most index
                   }
                   
                   case RANDOM_ELEMENT:
                   {
                       int randomNum = ThreadLocalRandom.current().nextInt(left, right+1);
                       return randomNum;//returns a random index
                   }
                   
                   //takes the begining, end, and middle index, gets their values and
                   //returns the median of those values
                   case MEDIAN_OF_THREE_ELEMENTS:
                   {
                       int median;
                       int middle = right/2;
                       int leftN = list.get(left);
                       int rightN = list.get(right);
                       int middleN = list.get(middle);
                       if(middleN >= leftN && middleN <= rightN)
                           median = middle;
                       else if(leftN >= middleN && leftN <= rightN)
                           median = left;
                       else
                           median = right;
                       return median;
                   }
                   
                   //takes 3 random index's and returns the median of those 3 random index's
                   case MEDIAN_OF_THREE_RANDOM_ELEMENTS:
                   {
                       int median;
                       int leftI = ThreadLocalRandom.current().nextInt(left, right+1);
                       int rightI = ThreadLocalRandom.current().nextInt(left, right+1);
                       int middleI = ThreadLocalRandom.current().nextInt(left, right+1);
                       int leftN = list.get(leftI);
                       int rightN = list.get(rightI);
                       int middleN = list.get(middleI);
                       
                       if(middleN >= leftN && middleN <= rightN)
                           median = middleI;
                       else if(leftN >= middleN && leftN <= rightN)
                           median = leftI;
                       else
                           median = rightI;
                       return median;
                   }
                           
                           
               }
       return -1;//filler in case not given
    }
    
    //enumeration
    public static enum PivotStrategy
    {
        FIRST_ELEMENT,
        RANDOM_ELEMENT,
        MEDIAN_OF_THREE_ELEMENTS,
        MEDIAN_OF_THREE_RANDOM_ELEMENTS
        
    }
    
}

