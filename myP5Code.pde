let message = "";

function setup() {
  createCanvas(400, 400);
  background(255);
  textAlign(CENTER);
  textSize(20);
  text("ask a question and click 🌸", width / 2, height / 2);
}

function draw() {
  // Show mouse position (feature)
  textSize(12);
  fill(0);
  text("mouseX: " + mouseX + " mouseY: " + mouseY, 70, 20);
}

function mousePressed() {
  getAnswer(); // Call the function
  background(255);
  textSize(24);
  fill(random(255), random(255), random(255));
  text(message, width / 2, height / 2);
}

// Custom function
function getAnswer() {
  let number = int(random(1, 5)); // Choose a random number between 1–4

  if (number == 1) {
    message = "yep!";
  } else if (number == 2) {
    message = "naah sorry(";
  } else if (number == 3) {
    message = "maybe🙄";
  } else {
    message = "ask again😡";
  }
}