import UIKit

//class BinaryTreeNode<T> {
//    var value: T
//    var left: BinaryTreeNode?
//    var right: BinaryTreeNode?
//    
//    init(_ value: T) {
//        self.value = value
//    }
//}
//
//
//class BinaryTree<T: Comparable> {
//    private(set) var root: BinaryTreeNode<T>?
//    
//    func insert(value: T) {
//        root = insert(node: root, value: value)
//    }
//    
//    private func insert(node: BinaryTreeNode<T>?, value: T) -> BinaryTreeNode<T> {
//        guard let node = node else {
//            return BinaryTreeNode(value)
//        }
//        if value < node.value {
//            node.left = insert(node: node.left, value: value)
//        } else {
//            node.right = insert(node: node.right, value: value)
//        }
//        return node
//    }
//    
//    func search(value: T) -> Bool {
//        return search(node: root, value: value)
//    }
//    
//    private func search(node: BinaryTreeNode<T>?, value: T) -> Bool {
//        guard let node = node else {
//            return false
//        }
//        if node.value == value {
//            return true
//        }
//        if value < node.value {
//            return search(node: node.left, value: value)
//        } else {
//            return search(node: node.right, value: value)
//        }
//    }
//    
//    func remove(value: T) {
//        root = remove(node: root, value: value)
//    }
//    
//    private func remove(node: BinaryTreeNode<T>?, value: T) -> BinaryTreeNode<T>? {
//        guard let node = node else {
//            return nil
//        }
//        if value < node.value {
//            node.left = remove(node: node.left, value: value)
//        } else if value > node.value {
//            node.right = remove(node: node.right, value: value)
//        } else {
//            if node.left == nil {
//                return node.right
//            } else if node.right == nil {
//                return node.left
//            }
//            node.value = minValue(node: node.right!)
//            node.right = remove(node: node.right, value: node.value)
//        }
//        return node
//    }
//    func traverseInOrder(visit: (T) -> Void) {
//        traverseInOrder(node: root, visit: visit)
//    }
//    
//    private func traverseInOrder(node: BinaryTreeNode<T>?, visit: (T) -> Void) {
//        guard let node = node else {
//            return
//        }
//        traverseInOrder(node: node.left, visit: visit)
//        visit(node.value)
//        traverseInOrder(node: node.right, visit: visit)
//    }
//    
//    func traversePreOrder(visit: (T) -> Void) {
//        traversePreOrder(node: root, visit: visit)
//    }
//    
//    private func traversePreOrder(node: BinaryTreeNode<T>?, visit: (T) -> Void) {
//        guard let node = node else {
//            return
//        }
//        visit(node.value)
//        traversePreOrder(node: node.left, visit: visit)
//        traversePreOrder(node: node.right, visit: visit)
//    }
//    
//    func traversePostOrder(visit: (T) -> Void) {
//        traversePostOrder(node: root, visit: visit)
//    }
//    
//    private func traversePostOrder(node: BinaryTreeNode<T>?, visit: (T) -> Void) {
//        guard let node = node else {
//            return
//        }
//        traversePostOrder(node: node.left, visit: visit)
//        traversePostOrder(node: node.right, visit: visit)
//        visit(node.value)
//    }
//    
//    private func minValue(node: BinaryTreeNode<T>) -> T {
//        var current = node
//        while let left = current.left {
//            current = left
//        }
//        return current.value
//    }
//}
