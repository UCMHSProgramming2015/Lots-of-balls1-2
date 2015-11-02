//declare arrays
float[] x = new float [400]; 
float[] y = new float[400];
float[] velX = new float[400];
float[] velY = new float[400];
float[] diam = new float[400];
//float x2, y2, velX2, velY2;
void setup() {
  //set size of canvas
  size(800, 600);
  int i = 0;
  while (i<400) {
    //initialize variables
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = random(5, 100);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  int i = 0;
  while (i<400) {
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