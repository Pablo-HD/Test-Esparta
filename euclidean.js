let n = 10;
let m = 4;

function solution(N, M) {
  let counter = 1,
    initial = 0;

  for (initial; (initial + M) % N != 0; initial = (initial + M) % N) {
    counter++;
  }

  return counter;
}

console.log(solution(n, m));
