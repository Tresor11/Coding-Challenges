
//problem link
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

var removeNthFromEnd = function (head, n) {
  let dummy = new ListNode("a");
  dummy.next = head;
  let current = head;
  let i = 0;
  while (current !== null) {
    i++;
    current = current.next;
  }
  i = i - n;
  current = dummy;
  while (i > 0) {
    current = current.next;
    i--;
  }
  current.next = current.next.next;
  return dummy.next;
};
