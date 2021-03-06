// ConsoleApplication1.cpp 
/*********************************************************************************************************************************************
*File: ConsoleApplication1.cpp //went ahead and left the file name as is. will change it in next project
*Author: Mauricio Parra
*date: 9/9/18
*Procedures:
	*main				-driver program. creates and runs 1000 simulations calling each function every simulation. also calculates final means
	*class process		-class to hold object for SRT and SPN priority queues
	*class myComparator	-class used to change priority queue into min heap priority queue
	*FCFS				-function to run FCFS algorithm and return mean turnaround(tt) and mean relative turnaround(rtt)
	*RR					-function to run RR algorithm and return mean tt and mean rtt
	*SRT				-function to run SRT algorithm and return mean tt and mean rtt
	*SPN				-function to run SPN algorithm and return mean tt and mean rtt
	*means				-used by algorithms to calculate mean tt and mean rtt
***********************************************************************************************************************************************/

#include "pch.h"
#include <iostream>
#include <iostream>
#include <queue>

using namespace std;

//i like to have my functions at the bottom
void FCFS(int sTime[], int Process[], int aTime[], double data[]);
void RR(int sTime[], int Process[], int aTime[], double data[]);
void SRT(int sTime[], int Process[], int aTime[], double data[]);
void SPN(int sTime[], int Process[], int aTime[], double data[]);
void means(int turnAround[], int sTime[], double data[]);


/*
Class: process
struct arguments: 
	int ID: identification number for process
	int ST: service time for process
functions:
	getID()
	getST()
	reduceST(): reduces ST by 1
*/
class process
{
	int ID;
	int ST;//service time
public:
	process(int _ID, int _ST)
	{
		ID = _ID;
		ST = _ST;
	}
	int getID() const { return ID; }
	int getST() const { return ST; }
	void reduceST() { ST--; }
};


/*
Class: comparator
functions:
	operator: compares and orders the queue
		parameters:
			p1
			p2
*/
class myComparator
{
public:
	int operator() (const process& p1, const process& p2)
	{
		return p1.getST() > p2.getST();
	}
};



//driver program
int main()
{
	int simulation = 0;
	//arrays to hold all simulations so we can mean them
	double FCFStt[1000];
	double FCFSrtt[1000];
	double RRtt[1000];
	double RRrtt[1000];
	double SRTtt[1000];
	double SRTrtt[1000];
	double SPNtt[1000];
	double SPNrtt[1000];

	//placeholder for incoming data
	double data[2];
	
	while (simulation < 1000)
	{
		int sTime1[20];
		int sTime2[20];
		int sTime3[20];
		int sTime[20];
		//create random numbers
		for (int i = 0; i < 20; i++)
		{
			sTime[i] = rand() % 10 + 1;
			//cout << sTime[i] << endl;
		}
		//copy service time array because couldnt figure out how to pass array by value
		for (int i = 0; i < 20; i++)
		{
			sTime1[i] = sTime[i];
			sTime2[i] = sTime[i];
			sTime3[i] = sTime[i];
		}

		int Process[20];
		for (int i = 0; i < 20; i++)
		{
			Process[i] = i;
			//cout << Process[i] << endl;
		}
		int aTime[] = { 0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38 };

		//run algorithms and capture data into arrays
		FCFS(sTime1, Process, aTime, data);
		FCFStt[simulation] = data[0];
		FCFSrtt[simulation] = data[1];

		RR(sTime2, Process, aTime, data);
		RRtt[simulation] = data[0];
		RRrtt[simulation] = data[1];

		SRT(sTime3, Process, aTime, data);
		SRTtt[simulation] = data[0];
		SRTrtt[simulation] = data[1];

		SPN(sTime, Process, aTime, data);
		SPNtt[simulation] = data[0];
		SPNrtt[simulation] = data[1];
		simulation++;
	}

	//taking the mean of simulations
	double FCFSttmean = 0;
	double FCFSrttmean = 0;
	double RRttmean = 0;
	double RRrttmean = 0;
	double SRTttmean = 0;
	double SRTrttmean = 0;
	double SPNttmean = 0;
	double SPNrttmean = 0;

	for (int i = 0; i < 1000; i++)
	{
		FCFSttmean += FCFStt[i];
		FCFSrttmean += FCFSrtt[i];
		RRttmean += RRtt[i];
		RRrttmean += RRrtt[i];
		SRTttmean += SRTtt[i];
		SRTrttmean += SRTrtt[i];
		SPNttmean += SPNtt[i];
		SPNrttmean += SPNrtt[i];
	}
	FCFSttmean = FCFSttmean / 1000;
	FCFSrttmean = FCFSrttmean / 1000;
	RRttmean = RRttmean / 1000;
	RRrttmean = RRrttmean / 1000;
	SRTttmean = SRTttmean / 1000;
	SRTrttmean = SRTrttmean / 1000;
	SPNttmean = SPNttmean / 1000;
	SPNrttmean = SPNrttmean / 1000;

	//printing table
	cout << endl;
	printf("%5s\n\n", "mean values of all algorithms");
	printf("%20s", "Turnaround");
	printf("%30s\n", "Relative Turnaround");
	printf("%s", "FCFS");
	printf("%12.2f", FCFSttmean);
	printf("%22.2f\n", FCFSrttmean);
	printf("%s", "RR");
	printf("%14.2f", RRttmean);
	printf("%22.2f\n", RRrttmean);
	printf("%s", "SRT");
	printf("%13.2f", SRTttmean);
	printf("%22.2f\n", SRTrttmean);
	printf("%s", "SPN");
	printf("%13.2f", SPNttmean);
	printf("%22.2f\n", SPNrttmean);
	cout << endl;
	return 0;
}



/*
Function: FCFS	-runs first come first serve algorithm
Parameters:
	int sTime[]		: service time
	int Process[]	: Process ID
	int aTime[]		: arrival time
	double data[]	: data holder
*/
void FCFS(int sTime[], int Process[], int aTime[], double data[])
{
	queue<int> myQueue;
	int sTimeCopy[20];
	int turnAround[20];
	int time = 0;
	int cur = 0;

	//making copy of service time array
	for (int i = 0; i < 20; i++)
		sTimeCopy[i] = sTime[i];

	//pushing the first process that has arrival time of 0
	myQueue.push(Process[0]);
	
	//while our queue still has stuff in it or if our time is still within 38
	while (time < 38 || !myQueue.empty())
	{
		
		if (!myQueue.empty())
		{
			//make our current process the front of the queue
			cur = myQueue.front();
			//decrease its service time by 1
			sTime[cur]--;
		}
		//increasing time
		time++;
		//if service time is over then remove running process
		if (sTime[cur] == 0 && !myQueue.empty())
		{
			myQueue.pop();
			turnAround[cur] = time - aTime[cur];//filling turnAround array

		}
		//is it time to add another element to qaueue?
		for (int i = 1; i < 20; i++)
		{
			if (time == aTime[i])
				myQueue.push(Process[i]);
		}
	}
	//cout << endl;
	//for (int i = 0; i < 20; i++)
		//cout << turnAround[i] << endl;
	//cout << endl;
	means(turnAround, sTimeCopy, data);
}



/*
Function: RR		-runs round robin algorithm and returns data to be used
Parameters:
	int sTime[]		: service time
	int Process[]	: Process ID
	int aTime[]		: arrival time
	double data[]	: data holder
*/
void RR(int sTime[], int Process[], int aTime[], double data[])
{
	queue<int> myQueue;
	int sTimeCopy[20];
	int turnAround[20];
	int time = 0;
	int cur = 0;
	int q = 0; //quantum of 1

	//making copy of service time array
	for (int i = 0; i < 20; i++)
		sTimeCopy[i] = sTime[i];

	//pushing the first process that has arrival time of 0
	myQueue.push(Process[0]);

	//while our queue still has stuff in it or if our time is still within 38
	while (time < 38 || !myQueue.empty())
	{
		for (int i = 1; i < 20; i++)
		{
			if (time == aTime[i])
				myQueue.push(Process[i]);
		}
		if (!myQueue.empty())
		{
			//make our current process the front of the queue
			cur = myQueue.front();
			//decrease its service time by 1
			sTime[cur]--;
		}
		//increasing time
		time++;
		//is it time to add another element to qaueue?
		
		if (!myQueue.empty())
			myQueue.pop();
		//if service time is over then remove running process
		if (sTime[cur] == 0)
		{
			turnAround[cur] = time - aTime[cur];//filling turnAround array
		}
		else 
		{
			myQueue.push(cur);
		}
	}
	means(turnAround, sTimeCopy, data);
}
/*
Function: SRT		-runs shortest remaining time and returns data
Parameters:
	int sTime[]		: service time
	int Process[]	: Process ID
	int aTime[]		: arrival time
	double data[]	: data holder
*/
void SRT(int sTime[], int Process[], int aTime[], double data[])
{
	//creating a priority queue min
	priority_queue <process, vector<process>, myComparator > pq;
	int sTimeCopy[20];
	int turnAround[20];
	int time = 0;
	process cur(0, 0);
	

	//making copy of service time array
	for (int i = 0; i < 20; i++)
		sTimeCopy[i] = sTime[i];

	//push the first element into queue
	pq.push(process(Process[0], sTime[0]));

	while (time < 38 || !pq.empty())
	{
		if (!pq.empty())
		{
			//make our current process the front of the queue
			cur = pq.top();//cant be local
			pq.pop();
			//decrease its service time by 1
			cur.reduceST();
			//return processor back in once its been modified (waisting time though)
			//pq.push(cur);
		}
		time++;
		//once current process is done, add it to turnaround array. we pop that process earlier to avoid empty queue error
		if (cur.getST() == 0)
		{
			turnAround[cur.getID()] = time - aTime[cur.getID()];
		}
		else
			pq.push(cur);
		//checking for new processes	
		for (int i = 1; i < 20; i++)
		{
			if (time == aTime[i])
				pq.push(process(Process[i], sTime[i]));
		}
	}
	means(turnAround, sTimeCopy, data);
}


/*
Function: SPN		-runs shortest process next algorithm and returns data
Parameters:
	int sTime[]		: service time
	int Process[]	: Process ID
	int aTime[]		: arrival time
	double data[]	: data holder
*/
void SPN(int sTime[], int Process[], int aTime[], double data[])
{
	//creating a priority queue min
	priority_queue <process, vector<process>, myComparator > pq;
	int sTimeCopy[20];
	int turnAround[20];
	int time = 0;
	process cur(0, 1);


	//making copy of service time array
	for (int i = 0; i < 20; i++)
		sTimeCopy[i] = sTime[i];

	//push the first element into queue
	pq.push(process(Process[0], sTime[0]));
	cur = pq.top();
	pq.pop();

	while (time < 30 || !pq.empty() || cur.getST() != 0)
	{
		time++;
		//we have cur already so decrease
		if (cur.getST() != 0)
			cur.reduceST();
		//see if another process is ready to go into queue
		for (int i = 1; i < 20; i++)
		{
			if (time == aTime[i])
			{
				pq.push(process(Process[i], sTime[i]));
				if (cur.getST() == 0 && pq.empty())
					cur = pq.top();
			}
				
		}
		//once its reduced, if it = 0, then calculate time and get a new cur from front of queue
		if (cur.getST() == 0)
		{
			turnAround[cur.getID()] = time - aTime[cur.getID()];
			if (!pq.empty())
			{
				cur = pq.top();
				pq.pop();
			}
		}
	}
	means(turnAround, sTimeCopy, data);
}



/*
function: means		-calculates the mean turnaround and mean relative turnaround and sends it back to be used in main
Parameters:
	int turnAround[]	:holds the turnaround time of each process
	int sTime[]			:service time
	double data[]		:holds data to be sent back
*/
void means(int turnAround[], int sTime[], double data[])
{
	double meanT = 0.0;
	double meanR = 0.0;
	for (int i = 0; i < 20; i++)
	{
		meanT += turnAround[i];
		meanR += (turnAround[i] / sTime[i]);
	}
	meanT = meanT / 20;
	meanR = meanR / 20;
	//cout << meanT << endl;
	//cout << meanR << endl;
	data[0] = meanT;
	data[1] = meanR;
}

