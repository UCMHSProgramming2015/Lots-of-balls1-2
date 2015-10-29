//declare variables
float x, y, vx, vy, d;
float x1, y1, vx1, vy1, d1;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  d = 80;
  vx = random(-5, 5);
  vy = random(-5, 5);
  x1= width/4;
  y1= height/4;
  d1= 200;
  vx1 = random(-10, 10);
  vy1= random (-10, 10);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball 1
  ellipse(x, y, d, d);

  //add velocity to position
  x += vx;
  y += vy;

  //bounce ball 1 if it hits walls
  if (x + d/2 >= width) {
    vx = -abs(vx);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - d/2 <= 0) {
    vx = abs(vx);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + d/2 >= height) {
    vy = -abs(vy);
  } else if (y - d/2 <= 0) {
    vy = abs(vy);
  }

  //draw ball 2
  ellipse(x1, y1, d1, d1);

  //add velocity to position
  x1+= vx1;
  y1 += vy1;

  //bounce ball 2 if it hits walls
  if (x1+d1/2>= width  ) {
    vx1*=-1;
  } else if (x1-d1/2<= 0) {
    vx1*=-1;
  }
  if (y1+d1/2>= height ) {
    vy1*=-1;
  } else if (y1-d1/2<= 0 ) {
    vy1*=-1;
  }
}