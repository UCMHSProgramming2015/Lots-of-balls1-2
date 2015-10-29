//declare variables
float x, y, velX, velY, diam;
float xx,yy,velXX, velYY;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  xx=width/2;
  yy=height/2;
  velXX=random(-7, 7);
  velYY=random(-7, 7);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(xx, yy, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  xx += velXX;
  yy += velYY;

  //bounce ball if it hits walls
  if (xx + diam/2 >= width) {
    velXX = -abs(velXX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (xx - diam/2 <= 0) {
    velXX = abs(velXX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (yy + diam/2 >= height) {
    velYY = -abs(velYY);
  } else if (yy - diam/2 <= 0) {
    velYY = abs(velYY);
  }
}