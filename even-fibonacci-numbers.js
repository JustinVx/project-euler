console.log("Answer to problem 2:")

function sum_of_even_fibonacci_numbers_below(does_not_exceed) {
  var current_sum_of_even_fibonacci_numbers = 0;
  var i1 = 1;
  var i2 = 2;
  while(i2 < does_not_exceed){
    if (i2 % 2 == 0) {
      current_sum_of_even_fibonacci_numbers += i2;
    }
    new_i = i1 + i2;
    i1 = i2;
    i2 = new_i;
  }
  console.log("The sum of the even fibonacci numbers below " + does_not_exceed + " is " + current_sum_of_even_fibonacci_numbers + "!");
}

sum_of_even_fibonacci_numbers_below(4000000000);
