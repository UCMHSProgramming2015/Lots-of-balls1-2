//declare variables
float[] x= new float [2]
float[] y= new float [2]
float[] velX= new float [2]
float{} velY= new float [2] 
float{} diam= new float [2]

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  x1=400;
  y1=300;
  velX1=random(-3,3);
  velY1=random(-3,3);
  diam1=80;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw balls
  ellipse(x, y, diam, diam);

  //add velocities to position
  x += velX;
  y += velY;

 ellipse(x1, y1, diam1, diam1);

  //add velocity to position
  x1 += velX1;
  y1 += velY1;
   if (x1 + diam/2 >= width) {
    velX1 = -abs(velX1);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } 
  
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


 else if (x1 - diam/2 <= 0){
    velX1 = abs(velX1);     //if the ball hits the left wall, assign x velocity the positive version of itself
 }
  if (y1 + diam/2 >= height) {
    velY1 = -abs(velY1);
  } else if (y1 - diam/2 <= 0) {
    velY1 = abs(velY1);
  }
  }