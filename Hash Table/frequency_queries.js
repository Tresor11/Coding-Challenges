//Question Link
// https://www.hackerrank.com/challenges/frequency-queries?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=dictionaries-hashmaps

function freqQuery(queries) {
  const result = [];
  const hash = {};
  const freq = [];

  for (let i = 0; i < queries.length; i += 1) {
    const [action, value] = queries[i];
    const initValue = hash[value] || 0;

    if (action === 1) {
      hash[value] = initValue + 1;

      freq[initValue] = (freq[initValue] || 0) - 1;
      freq[initValue + 1] = (freq[initValue + 1] || 0) + 1;
    }

    if (action === 2 && initValue > 0) {
      hash[value] = initValue - 1;

      freq[initValue - 1] += 1;
      freq[initValue] -= 1;
    }

    if (action === 3) result.push(freq[value] > 0 ? 1 : 0);
  }

  return result;
}
