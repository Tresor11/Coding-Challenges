var groupAnagrams = function (strs) {
  let map = {};
  strs.forEach((str) => {
    let sorted = str.split("").sort().join("");
    if (map[sorted]) {
      map[sorted].push(str);
    } else {
      map[sorted] = [str];
    }
  });
  return Object.values(map);
};
