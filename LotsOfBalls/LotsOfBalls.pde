//declare variables
//float x, y, velX, velY, diam;
//float x2, y2, velX2, velY2;

//c
int c = 10;
int i;
//declare array
float[] x = new float[c];
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float[] diam = new float[c];

void setup() {
  //set size of canvas
  size(800, 600);
 
  
  i=0;
  
  while(i<c) {
   
    y[i] = width/2;
    x[i] = width/2;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = 50;
    i++;
  }
  
  //initialize variables
  /*x[0] = width/2;
  y[0] = height/2;
  x[1] = width/2;
  y[1] = height/2;
  velX[0] = random(-5, 5);
  velY[1] = random(-5, 5);
  velX[0] = random(-5, 5);
  velY[1] = random(-5, 5);*/
  
}

void draw() {
  //draw background to cover previous frame
  background(0);
  
  for(int j = 0; j<c; j++) {
    ellipse(x[j], y[j], diam[j], diam[j]);
    x[j] += velX[j];
    y[j] += velY[j];
    if (x[j] + diam[j]/2 >= width) {
    velX[j] = -abs(velX[j]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[j] - diam[j]/2 <= 0) {
    velX[j] = abs(velX[j]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[j] + diam[j]/2 >= height) {
    velY[j] = -abs(velY[j]);
  } else if (y[j] - diam[j]/2 <= 0) {
    velY[j] = abs(velY[j]);
  }
    
  }
  //draw ball
  /*fill(255,0,0);
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);*/

  //add velocity to position
  /*x[0] += velX[0];
  y[0] += velY[0];
  x[1] += velX[1];
  y[1] += velY[1];*/

  //bounce ball if it hits walls
  /*if (x[0] + diam[0]/2 >= width) {
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
  println(x[0]);*/
}