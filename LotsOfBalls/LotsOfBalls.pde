//declare variables
float x1, y1, vx1, vy1, d1;
float x2, y2, vx2, vy2, d2;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x1 = width/2;
  y1 = height/2;
  d1 = 80;
  vx1 = random(-5, 5);
  vy1 = random(-5, 5);
  x2= width/4;
  y2= height/4;
  d2= 200;
  vx2 = random(-10, 10);
  vy2= random (-10, 10);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball 1
  ellipse(x1, y1, d1, d1);

  //add velocity to position
  x1 += vx1;
  y1 += vy1;

  //bounce ball 1 if it hits walls
  if (x1 + d1/2 >= width) {
    vx1 = -abs(vx1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x1 - d1/2 <= 0) {
    vx1 = abs(vx1);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y1 + d1/2 >= height) {
    vy1 = -abs(vy1);
  } else if (y1 - d1/2 <= 0) {
    vy1 = abs(vy1);
  }

  //draw ball 2
  ellipse(x2, y2, d2, d2);

  //add velocity to position
  x2+= vx2;
  y2 += vy2;

  //bounce ball 2 if it hits walls
  if (x2+d2/2>= width  ) {
    vx2*=-1;
  } else if (x2-d2/2<= 0) {
    vx2*=-1;
  }
  if (y2+d2/2>= height ) {
    vy2*=-1;
  } else if (y2-d2/2<= 0 ) {
    vy2*=-1;
  }
}