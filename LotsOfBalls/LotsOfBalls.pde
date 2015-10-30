//declare variables
//float x1, y1, velX1, velY1, diam;
//float colorx1, colory1, colorz1, 
float diam;
float [] x = new float [2];
float [] y = new float [2];
float [] velX = new float [2];
float [] velY = new float [2];
float [] colorx = new float [2];
float [] colory = new float [2];
float [] colorz = new float [2];

void setup() {
  //set size of canvas
  size(600, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  diam = 80;
  velX[0] = random(-4, 7);
  velY[0] = random(-5, 6);
  x[1] = width/2;
  y[1] = height/2;
  velX[1] = random(-5, 6);
  velY[1] = random(-4, 7);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  strokeWeight(10);
  stroke(colorx[0],colory[0],colorz[0]);
  colorx[0]=x[0];
  colory[0]=y[0];
  colorz[0]=2*x[0]/y[0];
  
  colorx[1]=x[1];
  colory[1]=y[1];
  colorz[1]=2*x[1]/y[1];
  noFill();

  //draw ball
  ellipse(x[0], y[0], diam, diam);
    
  stroke(colorx[1],colory[1],colorz[1]);
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
    velX[0] = abs(velX[0]); 
  }//if the ball hits the left wall, assign x velocity the positive version of itself
  if(x[1] + diam/2 >= width) {
    velX[1] = -abs(velX[1]);
  } else if(x[1] - diam/2 <= 0) {
    velX[1] = abs(velX[1]);
  }
  
  if (y[0] + diam/2 >= height)  {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  if(y[1] + diam/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}