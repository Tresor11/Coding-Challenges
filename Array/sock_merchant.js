function sockMerchant(n, ar) {
  let sort = ar.sort((a, b) => {
    return a - b;
  });
  let count = 0;
  for (let i = 0; i < sort.length; i++) {
    if (sort[i] === sort[i + 1]) {
      count++;
      sort.splice(i, 1);
    }
  }
  return count;
}
