// pupil: 눈동자

void setup() {
  size(640, 480);
  background(0);
}

void draw() {
  //잔디
  fill(199, 195, 70);
  rect(0, 440, width, 40);

  // 부엉이 그...뾰족한거 왼쪽 triangle(첫번째꼭짓점 xy좌표,두번째꼭짓점 xy좌표,세번째꼭짓점 xy좌표)
  noStroke();
fill(195, 150, 130);
 triangle(150, 100, 150, 300, 230, 150);
 triangle(390, 100, 390, 300, 310, 150);
 
  // 부엉이 몸통
  noStroke();
  fill(195, 150, 130);
  ellipse(270, 300, 250, 340);
  
  noStroke();
fill(250, 236, 197);
ellipse(211, 240, 120, 120);
ellipse(330, 240, 120, 120);
ellipse(270, 350, 170, 200); //배


  
  //날개
fill(102, 40, 7);
ellipse(150, 365, 40, 200);
ellipse(390, 365, 40, 200);
  
  // 눈 위치 (건들지 마시오)
  float lefteyeX = 320;
  float righteyeX = 220;
  float eyeY = 240;

  // 눈 크기와 동공 크기
  float eyesize = 100;
  float pupilsize = 50;

  // 동공 움직임. constain(어떤것을제어하는가?, 최소값, 최대값) <-범위를 제한할때 쓰는 함수
  float leftpupilX = constrain(mouseX, lefteyeX - 20, lefteyeX + 20);
  float leftpupilY = constrain(mouseY, eyeY - 15, eyeY + 15);

  float rightpupilX = constrain(mouseX, righteyeX - 20, righteyeX + 20);
  float rightpupilY = constrain(mouseY, eyeY - 15, eyeY + 15);

  // 눈
  stroke(54, 19, 30);
  strokeWeight(2);
  fill(255, 250, 225);
  ellipse(lefteyeX, eyeY, eyesize, eyesize);
  ellipse(righteyeX, eyeY, eyesize, eyesize);

  // 눈동자
  fill(0);
  ellipse(leftpupilX, leftpupilY, pupilsize, pupilsize);
  ellipse(rightpupilX, rightpupilY, pupilsize, pupilsize);
  
  //부리
  noStroke();
fill(102, 40, 7);
ellipse(270, 280, 50, 20);

 //발
  noStroke();
fill(102, 40, 7);
ellipse(210, 460, 50, 20);
ellipse(320, 460, 50, 20);

  // 달
  noStroke();
  fill(255, 235, 100);
  ellipse(width - 85, 65, 80, 80);
}
