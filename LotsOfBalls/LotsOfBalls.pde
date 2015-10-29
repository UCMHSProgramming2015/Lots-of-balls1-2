//declare variables
float x, y, velX, velY, diam;
float x2, y2, velX2, velY2, diam2;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 60;
  velX = random(-10, 10);
  velY = random(-10, 10);
  x2 = width/4;
  y2 = height/2;
  diam2 = 40;
  velX2 = 7;
  velY2 = -4;
}

void draw() {
  //draw background to cover previous frame
  background(200,0,200);

  //draw ball
  fill(100,200,50);
  ellipse(x, y, diam, diam);
  ellipse(x2, y2, diam2, diam2);
  //add velocity to position
  x += velX;
  y += velY;
  x2 += velX2;
  y2 += velY2;  

  //bounce ball if it hits walls
  if (x + diam/2 >= width ||x - diam/2 <= 0) {
    velX = -velX;    //reverse direction at wall
  }
  if (y + diam/2 >= height || y - diam/2 <= 0) {
    velY = -velY;
  }
  if (x2 + diam2/2 >= width ||x2 - diam2/2 <= 0) {
    velX2 = -velX2;    //reverse direction at wall
  }
  if (y2 + diam2/2 >= height || y2 - diam2/2 <= 0) {
    velY2 = -velY2;
  }
}