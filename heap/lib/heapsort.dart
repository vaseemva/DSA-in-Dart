void heapSort(List<int> arr) {
  int n = arr.length;

  // Build max heap
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }

  // Heap sort
  for (int i = n - 1; i >= 0; i--) {
    // Swap root with last element
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    // Heapify root element
    heapify(arr, i, 0);
  }
}

void heapify(List<int> arr, int n, int i) {
  int largest = i; // Initialize largest as root
  int left = 2 * i + 1;
  int right = 2 * i + 2;

  // If left child is larger than root
  if (left < n && arr[left] > arr[largest]) {
    largest = left;
  }

  // If right child is larger than largest so far
  if (right < n && arr[right] > arr[largest]) {
    largest = right;
  }

  // If largest is not root
  if (largest != i) {
    // Swap root with largest element
    int temp = arr[i];
    arr[i] = arr[largest];
    arr[largest] = temp;

    // Recursively heapify the affected sub-tree
    heapify(arr, n, largest);
  }
}
