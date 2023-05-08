class Maxheap {
  List<int?>? heap;
  int n = 0;

  Maxheap(int capacity) {
    heap = List.filled(capacity + 1, null);
    n = 0;
    print(heap);
  }
  bool get isEmpty {
    return n == 0;
  }

  int get size => n;
  insert(int x) {
    if (n == heap!.length - 1) {
      resize(2*heap!.length);
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
  
  void resize(int capacity) {
    List<int?>? temp=List.filled(capacity, null);
    for (var i = 0; i < heap!.length; i++) {
      temp[i]=heap![i];
    }
    heap=temp;
  }
}
