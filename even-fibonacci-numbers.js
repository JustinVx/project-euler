console.log("Problem 2!")

function print_fibonacci_numbers_below(does_not_exceed) {
  var i1 = 1;
  console.log(i1);
  var i2 = 2;
  while(i2 < does_not_exceed){
    console.log(i2);
    new_i = i1 + i2;
    i1 = i2;
    i2 = new_i;
  }
}

print_fibonacci_numbers_below(100);
