class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class DoublyLinkedList {
  Node? head;
  Node? tail;
  DoublyLinkedList();

  void display() {
    if (head == null) {
      print('List is empty');
    } else {
      Node current = head!;
      while (current.next != null) {
        print(current.data);
        current = current.next!;
      }
      print(current.data);
    }
  }

  void insertAtFirst(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head!.prev = newNode;
      head = newNode;
    }
  }

  void removeAtFirst() {
    if (head == null) {
      print('List is empty');
    } else {
      head = head!.next;
      head!.prev = null;
    }
  }

  void insertAtLast(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
      tail = newNode;
    }
  }

  void removeAtLast() {
    if (head == null) {
      print('List is empty');
    } else {
      tail = tail!.prev;
      tail!.next = null;
    }
  }

  bool isContains(int data) {
    if (head == null) {
      print('List is empty');
    } else {
      Node current = head!;
      while (current.next != null) {
        if (current.data == data) {
          return true;
        }
        current = current.next!;
      }
    }
    return false;
  }

  void removeNode(int data) {
    if (head == null) {
      print('List is empty');
    } else {
      if (head!.data == data) {
        head = head!.next;
        head!.prev = null;
      } else {
        Node current = head!;
        while (current.next != null) {
          if (current.data == data) {
            current.prev!.next = current.next;
            current.next!.prev = current.prev;
            break;
          }
          current = current.next!;
        }
      }
    }
  }
}

void main() {}
