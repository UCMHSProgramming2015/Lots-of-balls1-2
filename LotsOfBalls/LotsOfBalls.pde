//declare variables
int count = 3;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = {30, 80, 100};

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  x[1]= width/2;
  y[1]= height/2;
  x[2]= width/2;
  y[2]= height/2;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  velX[1] = random(-5, 5);
  velY[1] = random(-5, 5);
  velX[2] = random(-5, 5);
  velY[2] = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);
  
  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);
ellipse(x[2], y[2], diam[2], diam[2]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  x[1] += velX[1];
  y[1] += velY[1];
  x[2] += velX[2];
  y[2] += velY[2];
  
 

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
  
    if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[1] - diam[1]/2 <= 0) {
    velX[1] = abs(velX[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[1] + diam[1]/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
     if (x[2] + diam[2]/2 >= width) {
    velX[2] = -abs(velX[2]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[2] - diam[2]/2 <= 0) {
    velX[2] = abs(velX[2]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[2] + diam[2]/2 >= height) {
    velY[2] = -abs(velY[2]);
  } else if (y[2] - diam[2]/2 <= 0) {
    velY[2] = abs(velY[2]);
  }
}