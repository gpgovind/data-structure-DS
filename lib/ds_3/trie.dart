class TrieNode {
  Map<String, TrieNode>? children;

  TrieNode() {
    children = <String, TrieNode>{};
  }
}

class Trie {
  TrieNode? root;
  String? endSymbol;

  Trie(String str) {
    root = TrieNode();
    endSymbol = '*';
    populateSuffixTrie(str);
  }

  void populateSuffixTrie(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSubstring(i, str);
    }
  }

  void insertSubstring(int index, String str) {
    TrieNode node = root!;
    for (int i = index; i < str.length; i++) {
      String letter = str[i];
      if (!node.children!.containsKey(letter)) {
        node.children![letter] = TrieNode();
      }
      node = node.children![letter]!;
    }
    node.children![endSymbol] ;
  }

  bool contains(String str) {
    TrieNode node = root!;
    for (int i = 0; i < str.length; i++) {
      String letter = str[i];
      if (!node.children!.containsKey(letter)) {
        return false;
      }
      node = node.children![letter]!;
    }
    return node.children!.containsKey(endSymbol);
  }
}

void main() {
  Trie trie = Trie("arun");
  trie.populateSuffixTrie("ashik");
  print(trie.contains("shik"));
}
