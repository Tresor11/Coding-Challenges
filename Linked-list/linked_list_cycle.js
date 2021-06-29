var hasCycle = function (head) {
  if (head == null) {
    return false;
  }
  let slow = head;
  let fast = head;
  while (slow !== null) {
    if (fast.next !== null) {
      if (fast.next.next === null) {
        return false;
      } else {
        fast = fast.next.next;
      }
    } else {
      return false;
    }
    slow = slow.next;
    if (slow === fast) {
      return true;
    }
  }
  return false;
};
