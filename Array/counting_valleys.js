function countingValleys(n, s) {
  let alti = 0;
  let valey = 0;
  for (let i = 0; i < s.length; i++) {
    if (s.charAt(i) === "U") {
      if (alti === -1) {
        valey++;
      }
      alti++;
    } else if (s.charAt(i) === "D") {
      alti--;
    }
  }
  return valey;
}
