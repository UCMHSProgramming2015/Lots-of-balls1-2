//declare variables
float x, y, a, b, velX, velY, velA, velB, diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  a = 100;
  b = 200;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  velA = 10;
  velB = 10;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw balls
  ellipse(x, y, diam, diam);
  ellipse(a, b, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;
  a += velA;
  b += velB;

  //bouncy balls if they hit walls
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
    if (a + diam/2 >= width) {
    velA = -abs(velA);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a - diam/2 <= 0) {
    velA = abs(velA);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (b + diam/2 >= height) {
    velB = -abs(velB);
  } else if (b - diam/2 <= 0) {
    velB = abs(velB);
  }
}