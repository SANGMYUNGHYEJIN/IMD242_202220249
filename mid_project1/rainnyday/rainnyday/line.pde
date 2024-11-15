class Line {
  float x, y;
  float length;
  float vy = 0;
  color linecolor;

  void init(float x, float y, float length) {
    this.x = x;
    this.y = y;
    this.length = length;
    this.linecolor = color(random(180,255),random(180,255),random(180,255));
  }

  void update(float[] force) {
    vy += force[1];
    //    force[0]은 x축 방향의 힘이나 가속도,
    //force[1]은 y축 방향의 힘이나 가속도입니다. -챗지피티 설명-
    y += vy; //점점 더 하강하는 속도가 빨라진다.
  }

  void display() {
    //line(첫번쨰꼭짓점x좌표, 첫번째꼭짓점y좌표, 두번번째꼭짓점x좌표, 두번째꼭짓점y좌표)
    stroke(linecolor);
    strokeWeight(3);
    line(x, y, x, y + length);
  }
}
