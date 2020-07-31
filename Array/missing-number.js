//problem link
// https://leetcode.com/problems/missing-number/submissions/

var missingNumber = function (nums) {
  nums = nums.sort((a, b) => a - b);
  if (nums[0] !== 0) {
    return 0;
  } else if (nums[nums.length - 1] !== nums.length) {
    return nums.length;
  }
  let i = 1;
  while (i < nums.length) {
    if (nums[i] !== i) {
      return i;
    }
    i++;
  }
  return -1;
};
