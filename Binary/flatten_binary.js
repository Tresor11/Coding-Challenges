/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {void} Do not return anything, modify root in-place instead.
 */


 var flatten = function(root) {
    let prev=null
    function change(node){
    if (!node) return
    change(node.right)
    change(node.left)
    node.left=null
    node.right=prev
    prev=node
    }
    change(root)
};