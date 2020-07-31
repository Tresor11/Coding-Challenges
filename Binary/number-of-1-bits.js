//problem link
// https://leetcode.com/problems/number-of-1-bits/

var hammingWeight = function (n) {
  count = 0;
  while (n) {
    count++;
    n = n & (n - 1);
  }
  return count;
};
