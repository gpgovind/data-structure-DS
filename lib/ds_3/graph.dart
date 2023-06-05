class Graph {
  Map<int, List<int>> _map = {};

  void addVertex(int data) {
    _map[data] = <int>[];
  }

  void insert(int vertex, int edge, bool isBidirectional) {
    if (!_map.containsKey(vertex)) {
      addVertex(vertex);
    }
    if (!_map.containsKey(edge)) {
      addVertex(edge);
    }
    _map[vertex]!.add(edge);
    if (isBidirectional) {
      _map[edge]!.add(vertex);
    }
  }

  void display() {
    for (int x in _map.keys) {
      print('$x -> ${_map[x]}');
    }
  }
}

void main(List<String> args) {
  Graph graph = Graph();
  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 6, false);
  graph.display();
}





