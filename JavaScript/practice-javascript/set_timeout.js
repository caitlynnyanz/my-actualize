// Wait 2 seconds
// Print out “First task done!”
// Wait another 2 seconds
// Print out “Second task done!”
// Wait another 2 seconds
// Print out “Third task done!”

// setTimeout(function () {
//   console.log("First task done!");
// }, 2000);

// setTimeout(function () {
//   console.log("Second task done!");
// }, 2000 * 2);

// setTimeout(function () {
//   console.log("Third task done!");
// }, 2000 * 3);

setTimeout(function () {
  console.log("First task done!");
  setTimeout(function () {
    console.log("Second task done!");
    setTimeout(function () {
      console.log("Third task done!");
    }, 2000);
  }, 2000);
}, 2000);
