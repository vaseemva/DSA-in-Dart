import 'package:trie/trie.dart';

void main(List<String> args) {
  Trie trie=Trie();
  trie.insert('all');
  print(trie.search('alll'));
}