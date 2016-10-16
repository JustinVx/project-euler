
function sum_of_multiples_of_3(should_be_below) {
  var current_sum_of_multiples_of_3 = 0;
  for (i = 1; i < should_be_below; i++) {
  	if (i % 3 === 0) {
      current_sum_of_multiples_of_3 += i;
  	}
  }
  return current_sum_of_multiples_of_3;
}


console.log(sum_of_multiples_of_3(10));
