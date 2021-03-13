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