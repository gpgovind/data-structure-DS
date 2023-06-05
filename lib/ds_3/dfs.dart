class Graph {
 late int _vertices;
 late  List<List<int>> _adjList;

  Graph(int vertices) {
    _vertices = vertices;
    _adjList = List<List<int>>.generate(_vertices, (_) => []);
  }

  void addEdge(int source, int destination) {
    _adjList[source].add(destination);
    _adjList[destination].add(source);
  }

  void dfs(int startVertex) {
    List<bool> visited = List<bool>.filled(_vertices, false);

    _dfsHelper(startVertex, visited);
  }

  void _dfsHelper(int currentVertex, List<bool> visited) {
    visited[currentVertex] = true;
    print('$currentVertex ');

    for (int adjacentVertex in _adjList[currentVertex]) {
      if (!visited[adjacentVertex]) {
        _dfsHelper(adjacentVertex, visited);
      }
    }
    
  }
}


void main() {
  Graph graph = Graph(6);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(1, 4);
  graph.addEdge(2, 3);
  graph.addEdge(3, 4);
  graph.addEdge(3, 5);

  print('DFS traversal starting from vertex 0:');
  graph.dfs(0);
}
