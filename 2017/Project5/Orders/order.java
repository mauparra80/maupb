/*
Mauricio Parra
mxp160130
CS 2336.003
5/1/2017
 */
package Orders;
import java.util.*;


public class order 
{
    int auditorium;
    int totalSeats;
    int totalAdult;
    int totalChild;
    int totalSenior;
    ArrayList<adultTicket> adult = new ArrayList<adultTicket>();
    ArrayList<childTicket> child = new ArrayList<childTicket>();
    ArrayList<seniorTicket> senior = new ArrayList<seniorTicket>();
    //adult.add(adultTicket(row,seat));
    
    public order()
    {
        auditorium = 0;
        totalSeats = 0;
        totalAdult = 0;
        totalChild = 0;
        totalSenior = 0;
    }
    
    public int[] getTotals()
    {
        int[] returner = new int[3];
        returner[0] = adult.size();
        returner[1] = child.size();
        returner[2] = senior.size();
        return returner;
    }
    
    public int getArray(int[] position)
    {
        for(int a = 0; a < adult.size(); a++)
        {
            adultTicket temp = adult.get(a);
            if(position == temp.getPoints())
            {
                adult.remove(a);
                totalAdult--;
                totalSeats--;
                return 1;
            }
            
        }
        for(int a = 0; a < senior.size(); a++)
        {
            seniorTicket temp = senior.get(a);
            if(position == temp.getPoints())
            {
                senior.remove(a);
                totalSenior--;
                totalSeats--;
                return 2;
            }
        }
        for(int a = 0; a < child.size(); a++)
        {
            childTicket temp = child.get(a);
            if(position == temp.getPoints())
            {
                child.remove(a);
                totalChild--;
                totalSeats--;
                return 3;
            }
        }
        return 0;
    }
    
    public int getAdultSize()
    {
        return adult.size();
    }
    public int getSeniorSize()
    {
        return senior.size();
    }
    public int getChildSize()
    {
        return child.size();
    }
    
    public void clearOrder()
    {
        adult.clear();
        senior.clear();
        child.clear();
    }
    
    public void deleteAdult()
    {
        int size = adult.size();
        adult.remove(size - 1);
        totalAdult--;
        totalSeats--;
                
    }
    
    public void deleteSenior()
    {
        int size = senior.size();
        senior.remove(size - 1);
        totalSenior--;
        totalSeats--;
    }
    
    public void deleteChild()
    {
        int size = child.size();
        child.remove(size - 1);
        totalChild--;
        totalSeats--;
    }
    
    public int[] getAdultTickets(int i)
    {
        adultTicket temp = adult.get(i);
        return temp.getPoints();
    }
    
    public int[] getSeniorTickets(int i)
    {
        seniorTicket temp = senior.get(i);
        return temp.getPoints();
    }
    
    public int[] getChildTickets(int i)
    {
        childTicket temp = child.get(i);
        return temp.getPoints();
    }
    
    public void addAdultTicket(int row, int seat)
    {
        adultTicket temp = new adultTicket(row,seat);
        adult.add(temp);
        totalAdult++;
        totalSeats++;
    }
    public void addChildTicket(int row, int seat)
    {
        childTicket temp = new childTicket(row,seat);
        child.add(temp);
        totalChild++;
        totalSeats++;
    }
    public void addSeniorTicket(int row, int seat)
    {
        seniorTicket temp = new seniorTicket(row,seat);
        senior.add(temp);
        totalSenior++;
        totalSeats++;
                
    }
    
    public void setAuditorium(int aud)  //getters and setters for aud, and totals
    {
        auditorium = aud;
    }
    public int getAuditorium()
    {
        return auditorium;
    }
    public void setTotalSeats(int total)
    {
        totalSeats = total;
    }
    public int getTotalSeats()
    {
        return totalSeats;
    }
    public void setTotalAdult(int total)
    {
        totalAdult = total;
    }
    public int getTotalAdult()
    {
        return totalAdult;
    }
    public void setTotalChild(int total)
    {
        totalChild = total;
    }
    public int getTotalChild()
    {
        return totalChild;
    }
    public void setTotalSenior(int total)
    {
        totalSenior = total;
    }
    public int getTotalSenior()
    {
        return totalSenior;
    }
    
    
}

class adultTicket
{
    int row;
    int seat;
    
    public adultTicket(int newRow, int newSeat)
    {
        row = newRow;
        seat = newSeat;
    }
    
    public int getRow()
    {
        return row;
    }
    public int getSeat()
    {
        return seat;
    }
    public int[] getPoints()
    {
        int[] temp = {row,seat};
        return temp;
    }
            
}

class childTicket
{
    int row;
    int seat;
    
    public childTicket(int newRow, int newSeat)
    {
        row = newRow;
        seat = newSeat;
    }
    
    public int getRow()
    {
        return row;
    }
    public int getSeat()
    {
        return seat;
    }
    public int[] getPoints()
    {
        int[] temp = {row,seat};
        return temp;
    }
}

class seniorTicket
{
    int row;
    int seat;
    
    public seniorTicket(int newRow, int newSeat)
    {
        row = newRow;
        seat = newSeat;
    }
    
    public int getRow()
    {
        return row;
    }
    public int getSeat()
    {
        return seat;
    }
    public int[] getPoints()
    {
        int[] temp = {row,seat};
        return temp;
    }
    
    
}
