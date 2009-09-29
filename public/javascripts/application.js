matrixInitial = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 0]
]

matrixInitial.shuffle = function(){
  this[0][0]=11;
}

matrixInitial.shuffle();
console.info(matrixInitial[0][0]);

