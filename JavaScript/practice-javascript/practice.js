// Write a method that prints out the numbers 1 to 1000 that are divisible by 3.
// function printNumbersDivisibleByThree() {
//   var index = 1;
//   while (index <= 1000) {
//     if (index % 3 === 0) {
//       console.log(index);
//     }
//     index += 1;
//   }
// }
// printNumbersDivisibleByThree();

// Write a method that accepts an array of strings and prints out every other string.
// function printEveryOtherItem(strings) {
//   var index = 0;
//   strings.forEach(function (string) {
//     if (index % 2 === 0) {
//       console.log(string);
//     }
//     index += 1;
//   });
// }
// printEveryOtherItem(["a", "b", "c", "d", "e"]);

// Write a method that accepts an array of numbers and returns the sum.
// function computeSum(numbers) {
//   var sum = 0;
//   numbers.forEach(function (number) {
//     sum += number;
//   });
//   return sum;
// }
// console.log(computeSum([2, 4, 5]));

// Start with the hash: city_populations = {chi: 2700000}
// Add populations to the city_populations hash for New York City (8.4 million) and San Francisco (800,000).
// The result should be: {chi: 2700000, nyc: 8400000, sf: 800000}
// var cityPopulations = { chi: 2700000 };
// cityPopulations["nyc"] = 8400000;
// cityPopulations.sf = 800000; // same as cityPopulations["sf"]
// console.log(cityPopulations);

// Write a method that prints out every number from 1 to 100.

// function oneToOneHundred() {
//   var number = 0;
//   var numbers = [];
//   for (let i = 0; i < 100; i++) {
//     number++;
//     numbers.push(number);
//   }
//   console.log(numbers);
// }

// console.log(oneToOneHundred());

// Write a method that prints out every other number from 1 to 100. (That is, 1, 3, 5, 7 … 99).

// function everyOtherToOneHundred() {
//   var number = -1;
//   var numbers = [];
//   for (let i = 0; i < 50; i++) {
//     number++;
//     number++;
//     numbers.push(number);
//   }
//   console.log(numbers);
// }

// console.log(everyOtherToOneHundred());

// Write a method that accepts an array of numbers as a parameter, and counts how many 55’s there are in the array.

// var arr = [34, 55, 67, 12, 55];
// function howMany55s(array) {
//   var index = 0;
//   var number = 0;
//   while (index < array.length) {
//     if (array[index] === 55) {
//       number++;
//     }
//     index++;
//   }
//   return number;
// }

// console.log(howMany55s(arr));

// Write a method that accepts an array of strings and returns a new array that has the string "awesomesauce" inserted between every string.
// For example, if the initial array is ["a", "b", "c", "d", "e"], then the returned array should be ["a", "awesomesauce", "b", "awesomesauce", "c", "awesomesauce", "d", "awesomesauce", "e"].

// var arr = ["a", "b", "c", "d", "e"];

// function awesomesauce(array) {
//   var index = 0;
//   var new_arr = [];
//   while (index < array.length) {
//     new_arr.push(array[index]);
//     new_arr.push("awesomesauce");
//     index++;
//   }
//   return new_arr;
// }

// console.log(awesomesauce(arr));

// Start with the hash: item_amounts = {chair: 5, table: 2}
// Someone just bought two chairs. Change the hash such that the chair amount is 3.
// The final result should be: {chair: 3, table: 2}

// Start with the hash: item_amounts = {chair: 5, table: 2}
// You received 7 desks to sell. Change the hash to include desks.
// The final result should be: {chair: 5, table: 2, desk: 7}

// Write a method that accepts a number and returns its factorial.
// For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.

// Write a method that accepts two arrays of numbers, and prints the sum of every combination of numbers from first and second array.
// For example, if the method receives [1, 5, 10] and [100, 500, 1000], the method should print a list: 101, 501, 1001, 105, 505, 1005, 110, 510, 1010].
