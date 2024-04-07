class Node {
  int data;
  Node? left;
  Node? right;
  Node(this.data);
}

class BinaryTree {
  Node? root;

  BinaryTree();

  void insert(int data) {
    if (root == null) {
      root = Node(data);
    } else {
      insert_recursive(root!, data);
    }
  }

  void insert_recursive(Node current, int data) {
    if (data < current.data) {
      if (current.left == null) {
        current.left = Node(data);
      } else {
        insert_recursive(current.left!, data);
      }
    } else {
      if (current.right == null) {
        current.right = Node(data);
      } else {
        insert_recursive(current.right!, data);
      }
    }
  }

  bool search(int data) {
    if (root == null) {
      return false;
    } else {
      return search_recursive(root, data);
    }
  }

  bool search_recursive(Node? current, int data) {
    if (current == null) {
      return false;
    } else if (current.data == data) {
      return true;
    } else if (data < current.data) {
      return search_recursive(current.left, data);
    } else {
      return search_recursive(current.right, data);
    }
  }

  void display() {
    if (root == null) {
      print("Tree is empty");
    } else {
      print("Contents of the tree (in-order traversal):");
      inOrderTraversal(root!);
    }
  }

  void inOrderTraversal(Node node) {
    if (node.left != null) {
      inOrderTraversal(node.left!);
    }
    print(node.data);
    if (node.right != null) {
      inOrderTraversal(node.right!);
    }
  }
}

void main() {}
