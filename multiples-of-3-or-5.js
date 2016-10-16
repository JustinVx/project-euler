
function sum_of_multiples_of_3_or_5(should_be_below) {
  var current_sum_of_multiples_of_3_or_5 = 0;
  for (i = 1; i < should_be_below; i++) {
  	if (i % 3 === 0 || i % 5 === 0) {
      current_sum_of_multiples_of_3_or_5 += i;
  	}
  }
  return current_sum_of_multiples_of_3_or_5;
}

function answer_problem_1(should_be_below) {
  console.log("There are " + sum_of_multiples_of_3_or_5(should_be_below) + " multiples of 3 or 5 below " + should_be_below + "!");
}

answer_problem_1(10);
answer_problem_1(1000);
