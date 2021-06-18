const A = [9];
const B = [9, 3, 9, 3, 9, 12, 9, 9];

function solution(param) {
  for (let i = 0; i < param.length; i++) {
    let first = param.indexOf(param[i]);
    let second = param.lastIndexOf(param[i]);

    if (first != -1 && first == second) {
      return param[i];
    }
  }
}

console.log(solution(A));
console.log(solution(B));
