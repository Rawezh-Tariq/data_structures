class Node {
  int data;
  Node? next;
  Node(this.data, this.next);
}

class SinglyLinkedList {
  Node head;
  SinglyLinkedList(this.head);

  void display() {
    Node current = head;
    while (current.next != null) {
      print(current.data);
      current = current.next!;
    }
    print(current.data);
  }

  void insertFirst(int data) {
    Node newNode = Node(data, head);
    head = newNode;
  }

  void insertLast(int data) {
    Node newNode = Node(data, null);
    Node current = head;
    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList(Node(0, null));
  list.insertFirst(1);
  list.insertFirst(2);
  list.insertFirst(3);
  list.insertLast(4);
  list.display();
}
