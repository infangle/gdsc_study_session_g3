// find the maximum number in a list

int findMaximum(List<int> nums, int size){
  var max = 0;
  for(int i =0; i<size; i++){
    if (nums[i] > max){
      max = nums[i];
    }
    else{
      continue;
    }
  }
  return max;
}

//find the minimum number in a list

int findMinimum(List<int> nums, int size){
  var min = 0;
  for(int i =0; i<size; i++){
    if (nums[i] < min){
      min = nums[i];
    }
    else{
      continue;
    }
  }
  return min;
}

//calculate the sum of numbers in list

int calculateSum(List<int> nums, int size){
  var sum = 0;
  for(int i=0; i<size; i++){
    sum += nums[i];
  }
  return sum;
}

// calculate the average of a given list of numbers

double calculateAverage(List<int> nums, int size){
  var sum = 0;
  var count = 0;
  double avg = 0;
  for (int i=0; i<size; i++){
    sum+= nums[i];
    count+=1;
  }
  avg = sum/count;
  return avg;
}

// calling the funtions

void main(){
  final numbers = [1,8,3,3,4,4,5,5,69,10,39,91,10];
  print("Maximum number: ${findMaximum(numbers,numbers.length)}");
  print("Minimum number: ${findMinimum(numbers,numbers.length)}");
  print("Sum of numbers: ${calculateSum(numbers,numbers.length)}");
  print("Average of numbers: ${calculateAverage(numbers,numbers.length)}");

  
}

