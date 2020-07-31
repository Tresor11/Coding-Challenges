//problem link
// https://leetcode.com/problems/sum-of-two-integers/


var getSum = function (a, b) {
  while (b !== 0) {
    let carry = a & b;
    a = a ^ b;
    b = carry << 1;
  }
  return a;
};
