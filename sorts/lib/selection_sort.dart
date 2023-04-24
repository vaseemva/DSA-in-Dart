selectionSort(List<int> list) {
  int length = list.length;
  for (var i = 0; i < length; i++) {
    int min = i;
    for (var j = i + 1; j < length; j++) {
      if (list[j] < list[min]) {
        min = j;
      }
    }
    int temp = list[min];
    list[min] = list[i];
    list[i] = temp;
  }
}
