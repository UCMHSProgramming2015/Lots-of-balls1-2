//declare variables
int count = 300;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];

void setup() {
  //set size of canvas
  size(600, 600);
  for (int i = 0; i < count; i++) {
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = random(10, 40);
    velX[i] = random(-5, 6);
    velY[i] = random(-5, 6);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for (int i = 0; i < count; i++) {
    fill(random(255), random(255), 0);
    x[i] += velX[i];
    y[i] += velY[i];
    ellipse(x[i], y[i], diam[i], diam[i]);
    if (x[i] + diam[i] >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i] <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i] >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i] <= 0) {
      velY[i] = abs(velY[i]);
    }
  }
}