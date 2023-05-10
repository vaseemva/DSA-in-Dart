class Trie {
  TrieNode? root;
  Trie() {
    root = TrieNode();
  }
  void insert(String word) {
    if ( word.isEmpty) {
      throw ArgumentError("Invalid input");
    }
    String sword = word.toLowerCase();
    TrieNode? current = root;
    for (var i = 0; i < word.length; i++) {
      String c = sword[i];
      int index = c.codeUnitAt(0) - 'a'.codeUnitAt(0);
      if (current!.children![index] == null) {
        TrieNode node = TrieNode();
        current.children![index] = node;
        current = node;
      } else {
        current = current.children![index];
      }
    }
    current!.isWord = true;
  }

  bool search(String word) {
    word = word.toLowerCase();
    TrieNode? current = root;
    for (var i = 0; i < word.length; i++) {
      String c = word[i];
      int index = c.codeUnitAt(0) - 'a'.codeUnitAt(0);
      if (current!.children![index] == null) {
        return false;
      }
      current = current.children![index];
    }
    return current!.isWord!;
  }
}

class TrieNode {
  List<TrieNode?>? children;
  bool? isWord;
  TrieNode() {
    children = List.filled(26, null);
    isWord = false;
  }
}
