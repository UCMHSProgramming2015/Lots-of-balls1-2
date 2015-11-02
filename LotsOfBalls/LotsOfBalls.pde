//delcare and initialize array

float[] x = new float[2];
float[] y = new float[2];
float[] velX = new float[2];
float[] velY = new float[2];
float[] diam = new float[2];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  int i = 0;
 while (i < 2) {
  x[i] = random(width);
  y[i] = random(height);
  diam[i] = 80;
  velX[i] = random(-10, 10);
  velY[i] = random(-10, 10);
  i++;
 }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  
  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }


  //draw ball
  ellipse(x[1], y[1], diam[1], diam[1]);
  
  //add velocity to position
  x[1] += velX[1];
  y[1] += velY[1];
  
  //bounce ball if it hits walls
  if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[0]/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}