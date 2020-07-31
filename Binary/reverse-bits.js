//problem link
// https://leetcode.com/problems/reverse-bits/

var reverseBits = function (n) {
  let res = "";
  let count = 32;
  while (count > 0) {
    temp = `${n & 1}`;
    res += temp;
    n = n >> 1;
    count--;
  }
  return parseInt(res, 2);
};
