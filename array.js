const A = [9, 3, 9, 3, 9, 12, 13, 9];

function solution(param) {
  for (let i = 0; i < param.length; i++) {
    let first = param.indexOf(param[i]),
      second = param.lastIndexOf(param[i]);

    if (first != -1 && first == second) {
      return param[i];
    }
  }
}

console.log(solution(A));
