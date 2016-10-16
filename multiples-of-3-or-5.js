var should_be_below = 10;
var amount_of_multiples_of_3 = 0;
var sum_of_multiples_of_3 = 0;

for (i = 1; i < should_be_below; i++) {
	if (i % 3 === 0) {
		console.log(i);
    amount_of_multiples_of_3++;
    sum_of_multiples_of_3 += i;
	}
}

console.log("amount: " + amount_of_multiples_of_3);
console.log("sum: " + sum_of_multiples_of_3);
