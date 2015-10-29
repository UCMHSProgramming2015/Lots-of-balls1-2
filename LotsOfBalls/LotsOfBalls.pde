//declare variables
int c = 100;
float[] x = new float[c]; 
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float diam = 30;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (int i = 0; i < c; i++) {
    x[i] = random(diam, width-diam);
    y[i] = random(diam, height/diam);
    velX[i] = random(-10, 10);
    velY[i] = random(-10, 10);
  }
}

void draw() {
  //draw background to cover previous frame
  background(200, 50, 100);

  for (int j = 0; j<c; j++) {
    //draw ball
    ellipse(x[j], y[j], diam, diam);
    //add velocity to position
    x[j] += velX[j];
    y[j] += velY[j];
    //bounce ball if it hits walls
    if (x[j] + diam/2 >= width ||x[j] - diam/2 <= 0) {
      velX[j] = -velX[j];    //reverse direction at wall
    }
    if (y[j] + diam/2 >= height || y[j] - diam/2 <= 0) {
      velY[j] = -velY[j];
    }
  }
}