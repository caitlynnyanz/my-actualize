var moment = require("moment");

console.log("Hello from JavaScript!");
var datetime = moment().startOf("day").fromNow();
console.log(datetime);

var name = "Ty";
var time = "today";
console.log(`Hello ${name}, how are you ${time}?`);
