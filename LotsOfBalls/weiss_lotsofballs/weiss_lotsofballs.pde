//declare variables
int count = 1000;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for(int i = 0; i < count; i++){
  x[i] = width/2;
  x[i] = width/4;
  y[i] = height/2;
  y[i] = height/4;
  diam[i] = random(15,30);
  diam[i] = random(15,30);
  velX[i] = random(2, 5);
  velX[i] = random(-1, 1);
  velY[i] = random(-5, 5);
  velX[i] = random(-10, 10);
  }
}

void draw() {
  //draw background to cover previous frame
  background(random(255),random(255),random(255));

  //draw ball
  for(int i = 0; i < count; i++){
    fill(random(255),random(255),random(255));
    noStroke();
  ellipse(x[i], y[i], diam[i], diam[i]);

  //add velocity to position
  x[i] += velX[i];
  y[i] += velY[i];

  //bounce ball if it hits walls
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i]
  - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
   if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[1] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
  }
}