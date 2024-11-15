class drop {
  float x, y;
  float vx, vy;
  color dropcolor;

  drop(float x, float y) {
    this.x = x;
    this.y = y;
    this.vx = random(-4, 4); // 랜덤한 x 방향 속도(값을 늘리면 더 넓은 x범위로 퍼집니다.)
    this.vy = random(-8, -4); // 위로 튀는 y 방향 속도 (값을 늘리면 더 빨리 물방울이 튀어오릅니다.)
    this.dropcolor = color(random(180, 255), random(180, 255), random(180, 255));
  }

  void update(float[] force) {
    vy += force[1];
    x += vx;
    y += vy;
  }

  void display() {
    fill(dropcolor);
    noStroke();
    ellipse(x, y, random(8, 10), random(8, 10)); //최댓값 15 초과로 설정하면 이상해짐, 랜덤 범위가 동일하지 않으면 진짜 이상해짐. 마치 타원 모양의 컨페티가 튀어오르는 거 같은 느낌이 들었음.
  }
}
