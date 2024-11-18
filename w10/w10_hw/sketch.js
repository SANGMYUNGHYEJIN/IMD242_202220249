const colours = [
  #257180,
  #F2E5BF,
  #FD8B51,
  #CB6040
];
let gravity = [0, 0.1];
let friction = 0.99;
let cnt = 0;
let mouse = [0, 0];

ArrayList<Confetti> confetties;

function setup() {
  size(800, 800);
  confetties = new ArrayList<Confetti>();
}

void gen(float x, float y, float n) {
  for (int idx = 0; idx < n; idx++) {
    float randomW = random(4, 20);
    float randomH = random(4, 20);
    float randomForce = random(1, 10);
    float randomAngForce = random(-30, 30);
    Confetti newConfetti = new Confetti(x, y,
      randomW, randomH,
      colours[int(random(colours.length))],
      randomForce, randomAngForce);
    confetties.add(newConfetti);
  }
}



function mousePressed() {
  cnt = 0;
  mouse[0] = mouseX;
  mouse[1] = mouseY;
}

function mouseReleased() {
  println("gen: " + cnt);
  gen(mouse[0], mouse[1], cnt);
}

function keyPressed() {
  if (key =='p' || key =='P')
    println("confetties: " + confetties.size());
}

function draw() {
  if (mousePressed) {
    cnt++;
  }
  background(255);
  for (let idx = confetties.size() - 1; idx >= 0; idx--) {
    Confetti aConfetti = confetties.get(idx);
    aConfetti.update(gravity, friction);
    if (aConfetti.isOutOfScreen()) {
      confetties.remove(idx);
    }
  }
  for (let idx = 0; idx < confetties.size(); idx++)
    confetties.get(idx).display();
}
