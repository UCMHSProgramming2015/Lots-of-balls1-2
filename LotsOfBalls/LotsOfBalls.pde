//declare variables
//float x, y, velX, velY, diam, ddiam;
//float x[1], y[1], velx[1], vely[1], diam[1], ddiam[1];

int count = 100;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float [count];
float[] velY = new float [count];
float[] diam = new float [count];
float[] ddiam = new float [count];

void setup() {
  //set size of canvas
  size(800, 800);
  colorMode(HSB, width);

  //initialize variables
  int i = 0;
  while (i < count) {
    x[i] = width/2;
    y[i] = height/2;
    diam[i] = 80;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    ddiam[i] = random(-3, 3);
    i += 1;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  int i = 0;

  while (i < count) {
    //draw ball
    fill(x[i], y[i], width);
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
    diam[i] += ddiam[i];

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

    //Ball gets smaller/larger
    if (diam[i] >= 120 || diam[i] <= 40) {
      ddiam[i] = -ddiam[i];
    }
    i += 1;
  }
}