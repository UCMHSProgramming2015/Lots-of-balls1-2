//declare variables
float x, y, velX, velY, diam,a ,b, velA, velB ;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
  y = height/2;
  diam = 80;
  velX = random(-5, 5);
  velY = random(-5, 5);
  a= width/3;
  b= height/2;
  velA= random(-10,10);
  velB = random(-10,10);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);

  //add velocity to position
  x += velX;
  y += velY;

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
  ellipse(a,b,diam,diam);
  a+=velA;
  b += velB;
  
  if(a + diam/2 >= width) {
    velA =-abs(velA);
  } else if (a-diam/2 <=0) {
    velA = abs(velA);
  }
  if (b + diam/2 >= height) {
   velB = -abs(velB);
  } else if( b-diam/2 <= 0) {
    velB = abs(velB);
  }
}