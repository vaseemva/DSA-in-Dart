class HashTable {
  List<HashNode?>? _buckets;
  int? _numberOfBuckets;
  int? _size;
  HashTable({int capacity = 10}) {
    _buckets = List.filled(capacity, null);
    _numberOfBuckets = capacity;
    _size = 0;
  }
  int get size {
    return _size!;
  }

  bool get isEmpty {
    return size == 0;
  }

  int getBucketIndex(int key) {
    return key % _numberOfBuckets!;
  }

  String? get(int key) {
    int bucketIndex = getBucketIndex(key);
    HashNode? head = _buckets![bucketIndex];
    while (head != null) {
      if (key == head.key) {
        return head.value;
      }
      head = head.next;
    }
    return null;
  }

  void put(int key, String value) {
    // if (key == null || value == null) {
    //   throw Exception("key or value is null");
    // }
    int bucketIndex = getBucketIndex(key);
    HashNode? head = _buckets![bucketIndex];
    while (head != null) {
      if (key == head.key) {
        head.value = value;
        return;
      }
      head = head.next;
    }
    _size = size + 1;
    head = _buckets![bucketIndex];
    HashNode newNode = HashNode(key, value);
    newNode.next = head;
    _buckets![bucketIndex] = newNode;
  }

  String? remove(int key) {
    int bucketIndex = getBucketIndex(key);
    HashNode? head = _buckets![bucketIndex];
    HashNode? previous;
    while (head != null) {
      if (head.key == key) {
        break;
      }
      previous = head;
      head = head.next;
    }
    if (head == null) {
      return null;
    }
    _size = _size! - 1;
    if (previous != null) {
      previous.next = head.next;
    } else {
      _buckets![bucketIndex] = head.next;
    }
    return head.value;
  }
  //greatest element in hash table
  int? max() {
    int? max = 0;
    for (int i = 0; i < _numberOfBuckets!; i++) {
      HashNode? head = _buckets![i];
      while (head != null) {
        if (head.key > max!) {
          max = head.key;
        }
        head = head.next;
      }
    }
    return max;
  }
}


class HashNode {
  int key;
  String value;
  HashNode? next;

  HashNode(this.key, this.value);
}
