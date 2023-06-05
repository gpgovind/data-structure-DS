class Node {
  late dynamic element;
  Node? next;

  Node(this.element);
}

class Stack {
  Node? top;

  void push(dynamic element) {
    final node = Node(element);
    if (top == null) {
      top = node;
    } else {
      node.next = top;
      top = node;
    }
  }

  void pop() {
    if (top == null) {
      print('stack underflow');
    } else {
      top = top?.next;
    }
  }

  void printStack() {
    if (top == null) {
      print('stack underflow');
    } else {
      var temp = top;
      while (temp != null) {
        print(temp.element);
        temp = temp.next;
      }
    }
  }
  

}

void main() {
  final list = Stack();
  list.push(19);
  list.push(20);
  list.push(21);
  list.pop();
  list.printStack();
  
}
