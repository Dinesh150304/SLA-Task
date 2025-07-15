const readline = require("readline");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("Enter a number: ", function(input) {
  const num = parseInt(input);
  let message = "";

  if (isNaN(num)) {
    message = "Please enter a valid number.";
  } else if (num % 3 === 0 && num % 5 === 0) {
    message = num + " is divisible by both 3 and 5.";
  } else if (num % 3 === 0) {
    message = num + " is divisible by 3 only.";
  } else if (num % 5 === 0) {
    message = num + " is divisible by 5 only.";
  } else {
    message = num + " is not divisible by 3 or 5.";
  }

  console.log(message);
  rl.close();
});
