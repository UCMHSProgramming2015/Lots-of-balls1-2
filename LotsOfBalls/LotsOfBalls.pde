//declare variables
//float x, y, velX, velY, diam;
//float x2, y2, velX2, velY2;

//c
int c;
//declare array
float[] x = new float[c];
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float[] diam = new float[c];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  /*x = width/2;
  y = height/2;
  x2 = width/2;
  y2 = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  velX2 = random(-5, 5);
  velY2 = random(-5, 5);*/
  
  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  x[1] = width/2;
  y[1] = height/2;
  velX[0] = random(-5, 5);
  velY[1] = random(-5, 5);
  velX[0] = random(-5, 5);
  velY[1] = random(-5, 5);
  diam[c] = 5;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  x[1] += velX[1];
  y[1] += velY[1];

  //bounce ball if it hits walls
  if (x[c] + diam[c]/2 >= width) {
    velX[c] = -abs(velX[c]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[c] - diam[c]/2 <= 0) {
    velX[c] = abs(velX[c]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[c] + diam[c]/2 >= height) {
    velY[c] = -abs(velY[c]);
  } else if (y[c] - diam[c]/2 <= 0) {
    velY[c] = abs(velY[c]);
  }
  /*if (x[1] + diam/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam/2 <= 0) {
    velY[1] = abs(velY[1]);
  }*/
}