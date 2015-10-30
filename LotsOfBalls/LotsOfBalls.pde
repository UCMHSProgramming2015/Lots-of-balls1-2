//declare variables and initialize arrays
int count = 200;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
float[] r = new float[count];
float[] g = new float[count];
float[] b = new float[count];

void setup() {
  //set size of canvas
  size(800, 600);


  for (int i = 0; i < count; i++) {
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = random(30, 70);
    r[i] = random(255);
    g[i] = random(255);
    b[i] = random(255);
  }
}

void draw() {


  //draw background to cover previous frame
  background(0);


  for (int i = 0; i < count; i++) {

    //draw ball
    fill(r[i],g[i],b[i]);
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
  }
}