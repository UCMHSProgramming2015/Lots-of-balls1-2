//declare variables
float x, y, x1, y1, velX, velY, velX1, velY1, diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  x1 = 10;
  y1 = 10;
  diam = 80;
  velX = random(2, 5);
  velY = random(2, 5);
  velX1 = random(2, 5);
  velY1 = random(2, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  ellipse(x1, y1, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;
  x1 += velX1;
  y1 += velY1;

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
    if (x1 + diam/2 >= width) {
    velX1 = -abs(velX1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x1 - diam/2 <= 0) {
    velX1 = abs(velX1);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y1 + diam/2 >= height) {
    velY1 = -abs(velY1);
  } else if (y1 - diam/2 <= 0) {
    velY1 = abs(velY1);
  }
}