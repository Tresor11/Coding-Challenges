//problem link
// https://leetcode.com/problems/counting-bits/

var countBits = function (num) {
  let result = [];
  for (let i = 0; i <= num; i++) {
    result.push((i >>> 0).toString(2).split("1").length - 1);
  }
  return result;
};
