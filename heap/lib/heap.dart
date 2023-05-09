

class Maxheap {
  List<int?>? heap;
  int n = 0;

  Maxheap(int capacity) {
    heap = List.filled(capacity + 1, null);
    n = 0;
  }
  bool get isEmpty {
    return n == 0;
  }
  void build(List<int>elements){
    int ns=elements.length;
  heap=List.from([null,...elements]);
  for (var i = ns~/2; i >=0; i--) {
    swim(n);
  }
  }
  int get size => n;
  insert(int x) {
    if (n == heap!.length - 1) {
      resize(2 * heap!.length);
    }
    n++;
    heap![n] = x;
    swim(n);
  }

  swim(int k) {
    while (k > 1 && heap![k ~/ 2]! < heap![k]!) {
      int temp = heap![k]!;
      heap![k] = heap![k ~/ 2];
      heap![k ~/ 2] = temp;
      k = k ~/ 2;
    }
  }

  int deleteMax() {
    int max = heap![1]!;
    swap(1, n);
    n--;
    sink(1);
    heap![n + 1] = null;
    return max;
  }

  void sink(int k) {
    while (2 * k <= n) {
      int j = 2 * k;
      if (j < n && heap![j]! > heap![j + 1]!) {
        j++;
      }
      if (heap![k]! <= heap![j]!) {
        break;
      }
      swap(k, j);
      k = j;
    }
  }

  void resize(int capacity) {
    List<int?>? temp = List.filled(capacity, null);
    for (var i = 0; i < heap!.length; i++) {
      temp[i] = heap![i];
    }
    heap = temp;
  }

  void swap(int a, int b) {
    int temp = heap![a]!;
    heap![a] = heap![b]!;
    heap![b] = temp;
  }
}
