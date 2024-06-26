class Node {
  int data;
  Node? next;
  Node(this.data);
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
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void removeFirst() {
    if (head != null) {
      head = head!.next;
    }
  }

  void insertLast(int data) {
    Node newNode = Node(data);
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

  void removeNode(int data) {
    if (head == null) {
      print("List is empty");
    } else if (head!.data == data) {
      head = head!.next;
    } else {
      Node current = head!;
      while (current.next != null) {
        if (current.next!.data == data) {
          current.next = current.next!.next;
          break;
        }
        current = current.next!;
      }
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
