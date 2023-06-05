class Node{
  int value;
  Node ? left;
  Node ?right;
  Node(this.value);
}

class binarysearchtree{
  Node ? root;
  insert(int value){
    Node ?currentNode=root;
    if(currentNode==null){
      root=Node(value);
      return;
    }
    while(true){
      if(value<currentNode!.value){
        if(currentNode.left==null){
          currentNode.left=Node(value);
          break;
        }else{
          currentNode=currentNode.left;
        }
      }else if(value>currentNode.value){
        if(currentNode.right==null){
          currentNode.right=Node(value);
          break;
        }else{
          currentNode=currentNode.right;
        }
      }else{
        break;
      }
    }


  }

  preOrder(Node? node){
    if(node!=null){
      print(node.value);
      preOrder(node.left);
      preOrder(node);
    }
  }

}