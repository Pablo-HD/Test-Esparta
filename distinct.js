const A = [2, 1, 1, 2, 3, 1];

function solution(param) {
  const fitered_param = param.filter((x, y) => param.indexOf(x) === y);
  return fitered_param.length;
}

console.log(solution(A));
