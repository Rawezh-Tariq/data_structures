class Node {
  int data;
  Node? next;
  Node(this.data, this.next);
}

class SinglyLinkedList {
  Node? head;
  SinglyLinkedList(this.head);

  void display() {
    if (head != null) {
      Node current = head!;
      while (current.next != null) {
        print(current.data);
        current = current.next!;
      }
      print(current.data);
    } else {
      print("List is empty");
    }
  }

  void insertFirst(int data) {
    Node newNode = Node(data, head);
    head = newNode;
  }

  void removeFirst() {
    if (head != null) {
      head = head!.next;
    }
  }

  void insertLast(int data) {
    Node newNode = Node(data, null);
    if (head == null) {
      head = newNode;
    }
    Node current = head!;

    while (current.next != null) {
      current = current.next!;
    }
    current.next = newNode;
  }

  void removeLast() {
    if (head == null || head!.next == null) {
      head = null;
    } else {
      Node current = head!;
      while (current.next!.next != null) {
        current = current.next!;
      }
      current.next = null;
    }
  }

  bool isContains(int data) {
    Node? current = head;
    while (current != null) {
      if (current.data == data) {
        return true;
      }
      current = current.next;
    }
    return false;
  }
}

void main() {}
