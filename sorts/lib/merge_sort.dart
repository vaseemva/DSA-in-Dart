mergeSort(List<int> arr, List<int> temp, int high, int low) {
  if (low<high) {//basic checking
    int mid=(low+high)~/2;
    mergeSort(arr, temp, mid, low);
    mergeSort(arr, temp, high, mid+1);
    merge(arr, temp, high, mid, low);
  }
}
merge(List<int> arr, List<int> temp, int high, int mid, int low) {
  for (var i = low; i <= high; i++) {
    temp[i] = arr[i];
  }
  int i = low;
  int j = mid + 1;
  int k = low;

  while (i <= mid && j <= high) {
    if (temp[i] <= temp[j]) {
      arr[k] = temp[i];
      i++;
    } else {
      arr[k] = temp[j];
      j++;
    }
    k++;
  }
  while (i <= mid) {
    arr[k] = temp[i];
    i++;
    k++;
  }
}
