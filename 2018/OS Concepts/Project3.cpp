/*
File: Project3.cpp
Author: Mauricio Parra
Procedures:
	PageFaultsFIFO	-algorithm going through working set size through first in first out
	pageFaultLRU	-algorithm going through working setr size through Least Recently Used
	pageFaultCLOCK	-algorithm going through working set size through CLOCK
	pageFaultRandom	-algorithm going through working set size through RANDOM
	struct Frame	-helper class for CLOCK algorithm
	chkFrame		-helper function for CLOCK algorithm to check if frame uses bit
	main			-main function to generate memory trace, loop through working set, and print trace.
*/
#include "pch.h"
#include <algorithm>
#include <bitset>
#include <deque>
#include <iostream>
#include <istream>
#include <iterator>
#include <map>
#include <memory>
#include <queue>
#include <set>
#include <sstream>
#include <stack>
#include <string>
#include <time.h>
#if __cplusplus >= 201103L
#include <array>
#include <initializer_list>
#include <random>
#include <system_error>
#include <unordered_map>
#include <unordered_set>
#endif
#include <unordered_set>
#include <unordered_map>
using namespace std;

/*
pageFaultsFIFO - if page not in buffer,  we insert and increment fault. if buffer is full we replace the first item in queue with the new page
parameters:
	int pg[] - current page we are insesrting
	int totaladdr	-total addresses
	int numbofframes	-number of frame we are on
*/
int pageFaultsFIFO(int pg[], int totaladdr, int numbofframes)
{
	//initializing a buffer, queue and faults
	unordered_set<int> buffer;
	queue<int> item;
	int faults = 0;

	for (int i = 0; i < totaladdr; i++)
	{
		int length = buffer.size();
		if (length > numbofframes)

			//If the buffer is full, replace the first item in queue with the new page if the new page is not already in buffer and increment the fault by 1
		{
			if (buffer.find(pg[i]) == buffer.end())
			{
				int front = item.front();
				item.pop();
				buffer.erase(front);
				buffer.insert(pg[i]);
				item.push(pg[i]);
				faults++;
			}
		}
		else //Insert the page if not in buffer and increment the fault by 1
		{
			if (buffer.find(pg[i]) == buffer.end())
			{
				buffer.insert(pg[i]);
				faults++;
				item.push(pg[i]);
			}
		}
	}

	return faults;
}

/*
pageFaultsLRU - if page not in buffer, insert and increment fault, else if buffer is full we are going to repalce the item that is least recently used
				(so the one that has the least iterations) and insert our new page then increase fault
parameters:
	int pg[]
	int totaladdr
	int numbofframes
*/
int pageFaultsLRU(int pg[], int totaladdr, int numbofframes)
{
	//initializing a buffer, queue and faults
	unordered_set<int> buffer;
	unordered_map<int, int> item;
	int faults;
	faults = 0;

	for (int i = 0; i < totaladdr; i++)
	{
		int length = buffer.size();


		if (length < numbofframes) //Insert the page if not in buffer and increment the fault by 1
		{
			if (buffer.find(pg[i]) == buffer.end())
			{
				buffer.insert(pg[i]);
				faults++;
			}
			item[pg[i]] = i;
		}

		else    //If the buffer is full, replace the least recently used item in queue with the new page if the new page is not already in buffer and increment the fault by 1
		{
			if (buffer.find(pg[i]) == buffer.end())
			{

				int leastrecused = INT_MAX, front;

				for (auto object = buffer.begin(); object != buffer.end(); object++)
				{
					if (item[*object] < leastrecused)
					{
						leastrecused = item[*object];
						front = *object;
					}
				}
				buffer.erase(front);
				buffer.insert(pg[i]);
				faults++;
			}
			item[pg[i]] = i;
		}
	}
	return faults;
}

/*
struct frame - contains both usebit and value to be easily used in the Clock algorithm
*/
struct frame
{
	bool usebit = false;
	int value = 0;
};

/*
chkframe	- iterate through frames to check if the frame value is equal to the page, if so then turn the usebit true
parameters:
	frame[] - array of frame object
	numbofframes
	page - current page
*/
bool chkframe(frame frame[], int numbofframes, int page)
{
	for (size_t i = 0; i < numbofframes; i++)
	{
		if (frame[i].value == page)
		{
			frame[i].usebit = true;
			return true;
		}
	}
	return false;
}

/*
pageFaultsClock	- using clock algorithm going through checkbit to insert the page value
paremeters:
	frms[] - array of object frms with stored data
	numbofframes
	pages[]
	totaladdr
*/
int pageFaultsClock(frame frms[], int numbofframes, int pages[], int totaladdr)
{
	int faults = 0;
	int chkbit = 0;

	// if checkframe returns true then keep iterating, if not then if checkbit is true, turn it false and change our chckbit value, then insert page
	for (size_t i = 0; i < totaladdr; i++)
	{
		if (chkframe(frms, numbofframes, pages[i])) continue; 
		else
		{
			while (frms[chkbit].usebit == true)
			{
				frms[chkbit].usebit = false;
				chkbit = (chkbit + 1) % numbofframes;
			}
			frms[chkbit].value = pages[i];
			chkbit = (chkbit + 1) % numbofframes;
			faults++;
		}
	}
	return faults;
}

/*
pageFaultsRandom	- generate a random number within the length of the buffer and choose that number to be replaced with page
parameters:
	pg[]
	totaladdr
	numbofframes
*/
int pageFaultsRandom(int pg[], int totaladdr, int numbofframes)
{
	//initializing a buffer, queue and faults
	unordered_set<int> buffer;
	unordered_map<int, int> item;
	int faults;
	faults = 0;

	for (int i = 0; i < totaladdr; i++)
	{
		int length = buffer.size();


		if (length < numbofframes) //Insert the page if not in buffer and increment the fault by 1
		{
			if (buffer.find(pg[i]) == buffer.end())
			{
				buffer.insert(pg[i]);
				faults++;
			}
			item[pg[i]] = i;
		}

		else    //If the buffer is full, replace a random item in queue with the new page if the new page is not already in buffer and increment the fault by 1
		{
			if (buffer.find(pg[i]) == buffer.end())
			{
				int min = 0;
				int max = length - 1;
				int randNum = rand() % (max - min + 1) + min;
				int tempPlace = 0;
				int front;

				for (auto object = buffer.begin(); object != buffer.end(); object++)
				{
					if (tempPlace == randNum)
					{
					
						front = *object;
						break;
					}
					tempPlace++;
				}
				buffer.erase(front);
				buffer.insert(pg[i]);
				faults++;
			}
			item[pg[i]] = i;
		}
	}
	return faults;
}

/*
main - driver to create the trace simulations, generate the random numbers and run the algorithms to finally print the average page fault
*/
int main()
{
	float _avgFIFO[21] = { 0 };
	float _avgLRU[21] = { 0 };
	float _avgCLOCK[21] = { 0 };
	float _avgRANDOM[21] = { 0 };
	//Running 1000 simulations
	for (int j = 0; j < 1000; ++j) {
		srand(time(0));
		//initializing the addr range to be generated
		int startrange = 1;
		int stoprange = 50;
		const int totaladdr = 999;
		int _array[totaladdr] = { 0 };
		int i;
		int random_number = -1;
		int numbofframes = 0;

		for (i = 0; i < 10; i++)
		{
			int base = (0 + rand() % ((99 - 0) + 1)) * 25;
			for (int k = 0; k < 100; k++)
			{
				_array[100 * i + k] = base + (startrange + rand() % ((stoprange - startrange) + 1));
			}
		}

		//for (i = 0; i < totaladdr; ++i) //generating 4000 random numbers
		//{
		//	_array[i] = (startrange + rand() % ((stoprange - startrange) + 1)) * 25;
		//}

		//running through the algorithms
		for (numbofframes = 2; numbofframes < 21; numbofframes++)
		{
			int totpageFaults = 0;
			totpageFaults = pageFaultsFIFO(_array, totaladdr, numbofframes);
			_avgFIFO[numbofframes] += totpageFaults;
			totpageFaults = pageFaultsLRU(_array, totaladdr, numbofframes);
			_avgLRU[numbofframes] += totpageFaults;
			frame* frms = new frame[numbofframes];
			//frame frms[numbofframes];
			totpageFaults = pageFaultsClock(frms, numbofframes, _array, totaladdr);
			_avgCLOCK[numbofframes] += totpageFaults;
			totpageFaults = pageFaultsRandom(_array, totaladdr, numbofframes);
			_avgRANDOM[numbofframes] += totpageFaults;


		}
	}

	//Calculating the average page faults for 2-20 frames for FIFO, LRU and CLOCK Algo 
	cout << "FIFO" << endl;
	for (int k = 2; k < 21; k++) {
		_avgFIFO[k] = _avgFIFO[k] / 1000;
		cout << "Average page Fault for " << k << " frames = " << _avgFIFO[k] << endl;

	}
	cout << "LRU" << endl;
	for (int k = 2; k < 21; k++) {
		_avgLRU[k] = _avgLRU[k] / 1000;
		cout << "Average page Fault for " << k << " frames = " << _avgLRU[k] << endl;

	}
	cout << "CLOCK" << endl;
	for (int k = 2; k < 21; k++) {
		_avgCLOCK[k] = _avgCLOCK[k] / 1000;
		cout << "Average page Fault for " << k << " frames = " << _avgCLOCK[k] << endl;

	}
	cout << "RANDOM" << endl;
	for (int k = 2; k < 21; k++) {
		_avgRANDOM[k] = _avgRANDOM[k] / 1000;
		cout << "Average page Fault for " << k << " frames = " << _avgRANDOM[k] << endl;
	}
	return 0;
}
