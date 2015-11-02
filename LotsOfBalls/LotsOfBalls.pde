//declare arrays
//int[] numbers;
//color [] c;
//float [] n;

//initializing arrays
//numbers = new int[10];
//c = new color[5];
//n = {35.6, 41.7, 2.00001};

//declare arrays
float[] x = new float[10];
float[] y = new float[10];
float[] a = new float[10];
float[] b = new float[10];
float[] diam = new float[10];
float[] velX = new float[10];
float[] velY = new float[10];
float[] velA = new float[10];
float[] velB = new float[10];
int i = 0;

//declaring AND initializing arrays
//int[] numbers = new int[200];


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  while (i < 10) {
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    velA[i] = random(-5, 5);
    velB[i] = random(-5, 5);
    diam[i] = random(5, 100);
    i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  int i = 0;
  while (i < 10) {


    //draw balls
    ellipse(a[i], b[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
    a[i] += velA[i];
    b[i] += velB[i];



    //bouncy balls if they hit walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[0] - diam[0]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    if (a[i] + diam[i]/2 >= width) {
      velA[i] = -abs(velA[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (a[i] - diam[i]/2 <= 0) {
      velA[i] = abs(velA[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (b[i] + diam[i]/2 >= height) {
      velB[i] = -abs(velB[i]);
    } else if (b[i] - diam[i]/2 <= 0) {
      velB[i] = abs(velB[i]);
    }
    i++;
  }
}