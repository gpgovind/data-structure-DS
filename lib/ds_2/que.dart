// import 'dart:io';

// class Node {
//   dynamic element;
//   dynamic next;

//   Node(this.element);
// }

// class Queue {
//   dynamic front;
//   dynamic rear;

//   void enqueue(dynamic element) {
//     Node node = Node(element);
//     if (front == null) {
//       front = rear = node;
//     } else {
//       rear!.next = node;
//       rear = node;
//     }
//   }

//   void dequeue() {
//     if (front == null) {
//       stdout.writeln("Empty queue");
//     } else {
//       front = front!.next;
//       if (front == null) {
//         rear = null;
//       }
//     }
//   }

//   void printQueue() {
//     if (front == null) {
//       stdout.writeln("Empty queue");
//     } else {
//       Node? temp = front;
//       while (temp != null) {
//         stdout.writeln(temp.element);
//         temp = temp.next;
//       }
//     }
//   }
// }

// Queue list = Queue();

// void main() {
//   Queue list = Queue();

//   list.enqueue(2);
//   list.enqueue(2);
//   list.enqueue(2);
//   list.enqueue(2);
//   // list.dequeue();
//   list.printQueue();
// }
