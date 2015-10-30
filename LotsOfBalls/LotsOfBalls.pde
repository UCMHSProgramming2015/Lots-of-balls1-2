//declare variables
float x1, y1, x2, y2, velX1, velY1, velX2, velY2, diam;
float colorx1, colory1, colorz1, colorx2, colory2, colorz2;

void setup() {
  //set size of canvas
  size(600, 600);

  //initialize variables
  x1 = width/2;
  y1 = height/2;
  diam = 80;
  velX1 = random(-4, 7);
  velY1 = random(-5, 6);
  x2 = width/2;
  y2 = height/2;
  velX2 = random(-5, 6);
  velY2 = random(-4, 7);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  strokeWeight(10);
  stroke(colorx1,colory1,colorz1);
  colorx1=x1;
  colory1=y1;
  colorz1=2*x1/y1;
  colorx2=x2;
  colory2=y2;
  colorz2=2*x2/y2;
  noFill();

  //draw ball
  ellipse(x1, y1, diam, diam);
  ellipse(x2, y2, diam, diam);

  //add velocity to position
  x1 += velX1;
  y1 += velY1;
  x2 += velX2;
  y2 += velY2;

  //bounce ball if it hits walls
  if (x1 + diam/2 >= width) {
    velX1 = -abs(velX1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x1 - diam/2 <= 0) {
    velX1 = abs(velX1); 
  }//if the ball hits the left wall, assign x velocity the positive version of itself
  if(x2 + diam/2 >= width) {
    velX2 = -abs(velX2);
  } else if(x2 - diam/2 <= 0) {
    velX2 = abs(velX2);
  }
  
  if (y1 + diam/2 >= height)  {
    velY1 = -abs(velY1);
  } else if (y1 - diam/2 <= 0) {
    velY1 = abs(velY1);
  }
  if(y2 + diam/2 >= height) {
    velY2 = -abs(velY2);
  } else if (y2 - diam/2 <= 0) {
    velY2 = abs(velY2);
  }
}