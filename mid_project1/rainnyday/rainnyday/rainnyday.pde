// !!!!!!!!!!!!!챗지피티 사용했습니다!!!!!!!!!!!!!!!!!! 특히 DROP 클래스 부분


ArrayList<Line> lines;
ArrayList<drop> drops;
float[] force = {0, 0.5};

void settings() {
  size(displayWidth, displayHeight); //챗지피티-fullscreen(); funtion이 processing 자체에서 작동되지 않아 해결책을 도출받음. 일종의 충돌로 인해 일어나는 프로그램 자체의 문제라고 설명 받음.
  //size(600, 600);
}


void setup() {
  lines = new ArrayList<Line>();
  drops = new ArrayList<drop>();
}

void mousePressed() {
  Line aNewLine = new Line();
  aNewLine.init(mouseX, mouseY, random(35, 80));
  lines.add(aNewLine);
}

void draw() {
  background(255);

  fill(0);


  textSize(20);
  text("mousePressed...", width*0.5, 50);
  text("rain(line): " + lines.size(), 20, 30);
  text("waterdrops(drop): " + drops.size(), 20, 50);
  text("with ChatGPT", 20, 70);
  //텍스트



  for (int i = lines.size() - 1; i >= 0; i--) {
    Line aLine = lines.get(i);
    aLine.update(force);  // 아래로 떨어지도록 중력 적용(챗지피티 설명)+line 함수에서 y+=vy 이므로 하강할수록 하강하는 속도가 증가함(개인 설명)
    aLine.display();


    // 만일 물방울이 땅에 닿았다면...
    if (aLine.y + aLine.length >= height) {
      // 물방울을 생성하고 선 삭제
      for (int j = 0; j < 10; j++) {
        drop newDrop = new drop(aLine.x, height);
        drops.add(newDrop);
      }
      lines.remove(i);
    }
  }
  for (int i = drops.size() - 1; i >= 0; i--) {
    drop adrop = drops.get(i);
    adrop.update(force);
    adrop.display();

    // 화면 아래로 벗어나면 물방울 삭제
    if (adrop.y > height) {
      drops.remove(i);
    }
  }
}
