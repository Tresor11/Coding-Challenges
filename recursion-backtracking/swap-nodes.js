//https://leetcode.com/problems/swap-nodes-in-pairs/

var swapPairs = function(head) {
    if(!head) return head
    swap(head)
    if(head.next) swapPairs(head.next.next)
    return head
};

var swap=function(node){
    if(!node.next) return node
    let temp  = node.next.val
    node.next.val = node.val
    node.val = temp
    return node

}