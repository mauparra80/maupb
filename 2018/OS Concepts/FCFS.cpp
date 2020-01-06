#include<iostream>
using namespace std;
//This method finds the waiting time for FCFS
void findWaitingTimeFCFS(int processes[], int n, int burstTime[],
                         int waitTime[], int arrivalTime[])
{
    int service_time[n];
    service_time[0] = 0;
    waitTime[0] = 0;
    for (int i = 1; i < n ; i++)
    {
        service_time[i] = service_time[i-1] + burstTime[i-1];
        waitTime[i] = service_time[i] - arrivalTime[i];
        if (waitTime[i] < 0)
            waitTime[i] = 0;
    }
}


// This method calculates the turn around time for FCFS
void findTurnAroundTimeFCFS(int processes[], int n, int burstTime[],
                            int waitTime[], int tat[])
{
    for (int i = 0; i < n ; i++)
        tat[i] = burstTime[i] + waitTime[i];
}


// This method finds Avg timme for FCFS
float *findavgTimeFCFS(int processes[], int n, int burstTime[], int arrivalTime[])
{
    int wt[n], tat[n];
    findWaitingTimeFCFS(processes, n, burstTime, wt, arrivalTime);
    findTurnAroundTimeFCFS(processes, n, burstTime, wt, tat);
    int total_wt = 0, total_tat = 0, total_rtat=0;
    for (int i = 0 ; i < n ; i++)
    {
        total_wt = total_wt + wt[i];
        total_tat = total_tat + tat[i];
        int compl_time = tat[i] + arrivalTime[i];
        int rtat=tat[i]/burstTime[i];
        total_rtat=total_rtat+rtat;
    }
    float *result = new float[2];
    result[0]=(float)total_tat / (float)n;
    result[1]=(float)total_rtat / (float)n;
    return result;
}


//This method finds waiting time for RR algorithm
void findWaitingTimeRR(int processes[], int n,
                       int burstTime[], int waitTime[], int quantum)
{
    int rem_bt[n];
    for (int i = 0 ; i < n ; i++)
        rem_bt[i] =  burstTime[i];
    int t = 0;
    while (1)
    {
        bool done = true;
        for (int i = 0 ; i < n; i++)
        {
            if (rem_bt[i] > 0)
            {
                done = false;
                if (rem_bt[i] > quantum)
                {
                    t += quantum;
                    rem_bt[i] -= quantum;
                }
                else
                {
                    t = t + rem_bt[i];
                    waitTime[i] = t - burstTime[i];
                    rem_bt[i] = 0;
                }
            }
        }
        if (done == true)
            break;
    }
}


// This methos finds turn around time for RR
void findTurnAroundTimeRR(int processes[], int n,
                          int burstTime[], int waitTime[], int turnAroundTime[])
{
    for (int i = 0; i < n ; i++)
        turnAroundTime[i] = burstTime[i] + waitTime[i];
}


// This method finds average time for RR algorithm
float *findavgTimeRR(int processes[], int n, int burstTime[],
                     int quantum)
{
    int wt[n], tat[n], total_wt = 0, total_tat = 0, total_rtat = 0, rtat=0;
    findWaitingTimeRR(processes, n, burstTime, wt, quantum);
    findTurnAroundTimeRR(processes, n, burstTime, wt, tat);
    for (int i=0; i<n; i++)
    {
        total_wt = total_wt + wt[i];
        total_tat = total_tat + tat[i];
        int rtat=tat[i]/burstTime[i];
        total_rtat=total_rtat+rtat;
    }
    float *result = new float[2];
    result[0]=(float)total_tat / (float)n;
    result[1]=(float)total_rtat / (float)n;
    return result;
}


struct Process {
    int pid;
    int bt;
    int art;
};


// This method finds waiting time for SRT
void findWaitingTimeSRT(Process process[], int n,
                        int waitTime[])
{
    int rt[n];
    for (int i = 0; i < n; i++)
        rt[i] = process[i].bt;
    int complete = 0, t = 0, minm = INT_MAX;
    int shortest = 0, finish_time;
    bool check = false;
    while (complete != n) {
        for (int j = 0; j < n; j++) {
            if ((process[j].art <= t) &&
                    (rt[j] < minm) && rt[j] > 0) {
                minm = rt[j];
                shortest = j;
                check = true;
            }
        }
        if (check == false) {
            t++;
            continue;
        }
        rt[shortest]--;
        minm = rt[shortest];
        if (minm == 0)
            minm = INT_MAX;
        if (rt[shortest] == 0) {
            complete++;
            finish_time = t + 1;
            waitTime[shortest] = finish_time -
                                 process[shortest].bt -
                                 process[shortest].art;
            if (waitTime[shortest] < 0)
                waitTime[shortest] = 0;
        }
        t++;
    }
}


// This method finds turn around time for SRT
void findTurnAroundTimeSRT(Process process[], int n,
                           int waitTime[], int turnAroundTime[])
{
    for (int i = 0; i < n; i++)
        turnAroundTime[i] = process[i].bt + waitTime[i];
}


// This method finds the average time for SRT algorithm
float *findavgTimeSRT(Process process[], int n)
{
    int wt[n], tat[n], total_wt = 0,
                       total_tat = 0,total_rtat=0;
    findWaitingTimeSRT(process, n, wt);
    findTurnAroundTimeSRT(process, n, wt, tat);
    for (int i = 0; i < n; i++) {
        total_wt = total_wt + wt[i];
        total_tat = total_tat + tat[i];
        int rtat=tat[i]/process[i].bt;
        total_rtat=total_rtat+rtat;
    }
    float *result = new float[2];
    result[0]=(float)total_tat / (float)n;
    result[1]=(float)total_rtat / (float)n;
    return result;
}
struct processHRRN {
    int at, bt, ct, wt, tt;
    int completed;
    float ntt;
} ;


// This method sorts the struct variables by arrival time
void sortByArrival(processHRRN process[],int n)
{
    struct processHRRN temp;
    int i, j;
    for (i = 0; i < n - 1; i++) {
        for (j = i + 1; j < n; j++) {
            if (process[i].at > process[j].at) {
                temp = process[i];
                process[i] = process[j];
                process[j] = temp;
            }
        }
    }
}


// THis method finds average time for HRRN
float *findavgTimeHRRN(processHRRN proc[], int n, int sum_bt)
{
    int i, j, t;
    char c;
    float avgwt = 0, avgtt = 0, avgrtt=0;
    sortByArrival(proc, n);
    for (t = proc[0].at; t < sum_bt;) {
        float hrr = -9999;
        float temp;
        int loc;
        for (i = 0; i < n; i++) {
            if (proc[i].at <= t && proc[i].completed != 1) {
                temp = (proc[i].bt + (t - proc[i].at)) / proc[i].bt;
                if (hrr < temp) {
                    hrr = temp;
                    loc = i;
                }
            }
        }
        t += proc[loc].bt;
        proc[loc].wt = t - proc[loc].at - proc[loc].bt;
        proc[loc].tt = t - proc[loc].at;
        avgtt += proc[loc].tt;
        proc[loc].ntt = ((float)proc[loc].tt / proc[loc].bt);
        avgrtt+=proc[loc].ntt;
        proc[loc].completed = 1;
        avgwt += proc[loc].wt;
    }
    float *result = new float[2];
    result[0]=avgtt / n;
    result[1]=avgrtt / n;
    return result;
}


// Main method
int main()
{
    int startrange = 1;
    int stoprange = 50;
    const int totalProcesses = 1000;
    const int totalSimulations = 1000;
    int _array[totalProcesses] = {0};
    int _arrivalTimeArray[totalProcesses] = {0};
    int totalTurnAroundTimeFCFS=0, totalRelativeTurnAroundTimeFCFS=0;
    int totalTurnAroundTimeRR=0, totalRelativeTurnAroundTimeRR=0;
    int totalTurnAroundTimeSRT=0, totalRelativeTurnAroundTimeSRT=0;
    int totalTurnAroundTimeHRRN=0, totalRelativeTurnAroundTimeHRRN=0;
    Process* proc = new Process[1000]();
    processHRRN* procHRRN = new processHRRN[1000]();
    int i, j, sum_bt=0;
    for(j=0; j<totalSimulations; ++j) {
        sum_bt=0;
        for(i=0; i<totalProcesses; ++i)
        {
            _array[i] = startrange + rand() % ((stoprange - startrange ) + 1);
            _arrivalTimeArray[i]=i;
            proc[i].pid=i;
            proc[i].bt=_array[i];
            proc[i].art=i;
            procHRRN[i].at=i;
            procHRRN[i].bt=_array[i];
            procHRRN[i].completed = 0;
            sum_bt += procHRRN[i].bt;
        }
        float *resultFCFS=findavgTimeFCFS(_arrivalTimeArray, totalProcesses, _array, _arrivalTimeArray);
        totalTurnAroundTimeFCFS=totalTurnAroundTimeFCFS+resultFCFS[0];
        totalRelativeTurnAroundTimeFCFS=totalRelativeTurnAroundTimeFCFS+resultFCFS[1];
        int quantum = 1;
        float *resultRR=findavgTimeRR(_arrivalTimeArray, totalProcesses, _array, quantum);
        totalTurnAroundTimeRR=totalTurnAroundTimeRR+resultRR[0];
        totalRelativeTurnAroundTimeRR=totalRelativeTurnAroundTimeRR+resultRR[1];
        float *resultSRT=findavgTimeSRT(proc, totalProcesses);
        totalTurnAroundTimeSRT=totalTurnAroundTimeSRT+resultSRT[0];
        totalRelativeTurnAroundTimeSRT=totalRelativeTurnAroundTimeSRT+resultSRT[1];
        float *resultHRRN=findavgTimeHRRN(procHRRN, totalProcesses,sum_bt);
        totalTurnAroundTimeHRRN=totalTurnAroundTimeHRRN+resultHRRN[0];
        totalRelativeTurnAroundTimeHRRN=totalRelativeTurnAroundTimeHRRN+resultHRRN[1];
    }
    printf("\nFCFS\n");
    printf("Average Turn Around time: %d\n", totalTurnAroundTimeFCFS/totalSimulations);
    printf("Average Relative Turn Around time: %d\n", totalRelativeTurnAroundTimeFCFS/totalSimulations);
    printf("\nRR\n");
    printf("Average Turn Around time: %d\n", totalTurnAroundTimeRR/totalSimulations);
    printf("Average Relative Turn Around time: %d\n", totalRelativeTurnAroundTimeRR/totalSimulations);
    printf("\nSRT\n");
    printf("Average Turn Around time: %d\n", totalTurnAroundTimeSRT/totalSimulations);
    printf("Average Relative Turn Around time: %d\n", totalRelativeTurnAroundTimeSRT/totalSimulations);
    printf("\nHRRN\n");
    printf("Average Turn Around time: %d\n", totalTurnAroundTimeHRRN/totalSimulations);
    printf("Average Relative Turn Around time: %d\n", totalRelativeTurnAroundTimeHRRN/totalSimulations);
    return 0;
}