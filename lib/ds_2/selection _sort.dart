
// selectionSort(List<int> arr2) {
// for (int i = 0; i < arr2.length; i++) {
// int minValue = arr2[i];
// int minIndex = i;
// for (int j = i + 1; j < arr2.length; j++) {
// if (arr2[j] < minValue) {
// minValue = arr2[j];
// minIndex = j;
// }
// }
// if (minIndex != i) {
// arr2[minIndex] = arr2[i];
// arr2[i] = minValue;
// }
// }
// print("Selection sort : $arr2");
// }

// void main() {
// List<int> arr2 = [221, 44, 444, 33, 2, 6, 7878, 54, 6];
// selectionSort(arr2);
// }

// selection sort on the other hand  selects the smallest element  and swaps it with the first element  then selects the smallest element and swaps

//Bubble sort repeatedly compares adjacent elements in the list and swaps them if they are in the 
//wrong order until the entire list is sorted. Selection sort, on the other hand, 
//selects the smallest element in the list and swaps
// it with the first element, then selects the second smallest element 
//and swaps it with the second element, and so on until the entire list is sorted.



void main() {
  List<int> arr = [64, 25, 12, 22, 11];
  print(selectionSort(arr));
}

List<int> selectionSort(List<int> arr) {
  int n = arr.length;
  
  for (int i = 0; i < n - 1; i++) {
    int minIdx = i;
    
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIdx]) {
        minIdx = j;
      }
    }
    
    int temp = arr[minIdx];
    arr[minIdx] = arr[i];
    arr[i] = temp;
  }
  
  return arr;
}
