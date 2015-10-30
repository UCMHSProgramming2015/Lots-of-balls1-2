//declare arrays
//int[] numbers;
//color [] c;
//float [] n;

//initializing arrays
//numbers = new int[10];
//c = new color[5];
//n = {35.6, 41.7, 2.00001};

//declare arrays
float[] x = new float[2];
float[] y = new float[2];
float[] a = new float[2];
float[] b = new float[2];
float[] diam = new float[2];
float[] velX = new float[2];
float[] velY = new float[2];
float[] velA = new float[2];
float[] velB = new float[2];

//declaring AND initializing arrays
//int[] numbers = new int[200];


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x[0] = width/2;
  y[0] = height/2;
  a[1] = 100;
  b[1] = 200;
  diam[0] = 80;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  velA[1] = 10;
  velB[1] = 10;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw balls
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(a[1], b[1], diam[0], diam[0]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  a[1] += velA[1];
  b[1] += velB[1];

  //bouncy balls if they hit walls
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
    if (a[1] + diam[0]/2 >= width) {
    velA[1] = -abs(velA[1]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (a[1] - diam[0]/2 <= 0) {
    velA[1] = abs(velA[1]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (b[1] + diam[0]/2 >= height) {
    velB[1] = -abs(velB[1]);
  } else if (b[1] - diam[0]/2 <= 0) {
    velB[1] = abs(velB[1]);
  }
}