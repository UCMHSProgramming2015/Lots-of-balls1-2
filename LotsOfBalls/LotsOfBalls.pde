//declaring arrays
//int[] numbers;
//color[] c;
//float[] n;

//initializing arrays
//numbers = new int[10];
//c = new color[5];
//n = {35.6, 41.7, 2.001};

//declaring and initializing arrays
//int[] numbers = new int[200];


//declare arrays
int count = 600;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
//float x, y, velX, velY, diam[0][0], x[1], y[1], velx[1], vely[1];


void setup() {
  //set size of canvas
  size(800, 600);
  
  //initialize variables
  for (int i = 0; i < count; i++) {
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = random(5,100);
    velX[i] = random(5,15);
    velY[i] = random(5,15);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  int i = 0;
  while (i < count){
  //draw ball
  fill(random(255),random(255),random(255));
  stroke(random(255),random(255),random(255));
  ellipse(x[i], y[i], diam[i], diam[i]);

  //add velocity to position
  x[i] += velX[i];
  y[i] += velY[i];

  //bounce ball if it hits walls
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
  i++;
  }
}