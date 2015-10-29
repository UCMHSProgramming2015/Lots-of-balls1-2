//declare variables
int c = 2;
float[] x = new float[c];
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float diam;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  x[1] = width-100;
  y[1] = height-50;
  diam = 40;
  velX[0] = random(2, 5);
  velY[0] = random(2, 5);
  velX[1] = random(-2, -5);
  velY[1] = random(-2, -5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam, diam);
  ellipse(x[1], y[1], diam, diam);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  x[1] += velX[1];
  y[1] += velY[1];

  //bounce ball if it hits walls
  if (x[0] + diam/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
    if (x[1] + diam/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}