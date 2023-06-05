insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int curr = arr[i];
    int j = i - 1;
    while (j >= 0 && arr[j] > curr) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = curr;
  }
  print("insertion sort : $arr");
}

// void main() {
//   List<int> arr = [100, 2, 44, 5, 3, 21, 1, 16, 7, 2];
//   insertionSort(arr);
// }
