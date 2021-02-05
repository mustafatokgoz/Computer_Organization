              /*Mustafa Tokgöz 171044077 #Homework2 Computer Organization*/

#include<iostream>


using namespace std;
#define MAX_SIZE 100


/*for subsets*/
int S[MAX_SIZE];

/*  takes 5 inputs
    num is for target number
    arr is array
    size is size of array
    curpos is current position
    length is length of subset
    sum is a local variable
    The funciton firstly checking if the current position is equal to size or not
    if it is then it is adding ith the elements of subset to sum  i to length
    Then if sum is equal to target (num) then returns 1 else returns 0
    IF curpos is not equal to size then it assigns arr[curpos] to S[length]
    then it is calling CheckSumPossibility function recursively
    why i use the second CheckSumPossibility call is to skip the current element
*/
int CheckSumPossibility(int num,int arr[],int size,int curpos,int length){
  int sum = 0;
  if(curpos==size){
    for(int i=0;i<length;i++){
      sum +=S[i];
    }
    if(sum==num){
      return 1;
    }
    return 0;
  }
  S[length]=arr[curpos];
  return CheckSumPossibility(num,arr,size,curpos+1,length+1) ||
               CheckSumPossibility(num,arr,size,curpos+1,length);

}

int CheckSumPossibility(int num,int arr[],int arraySize){
    return CheckSumPossibility(num, arr, arraySize,0,0);

}





int main() {
  int arraySize;
  int arr[MAX_SIZE];
  int num;
  int returnVal;
  cin >> arraySize;
  cin >> num;


  for(int i = 0; i < arraySize; ++i)
  {
      cin >> arr[i];
  }
  returnVal = CheckSumPossibility(num, arr, arraySize);
  if(returnVal == 1) {
  cout << "Possible!" << endl; }
  else
  {
  cout << "Not possible!" << endl;
  }


return 0; }
