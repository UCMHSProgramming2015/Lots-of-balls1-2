//declare variables
int quantity = 300;
float[] x = new float[quantity];
float[] y = new float[quantity];
float[] velX = new float[quantity];
float[] velY = new float[quantity];
float[] diam = new float[quantity];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (int i = 0; i < quantity; i++){
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5,5);
    velY[i] = random(-5,5);
    diam[i] = 80;
  }
  fill(255);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //bounce ball if it hits walls
  for (int i = 0; i < quantity; i++) {
    if (x[i] + diam[i]/2 >= width) {
       velX[i] = -velX[i];    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -velY[i];
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    
    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] = x[i] + velX[i];
    y[i] = y[i] + velY[i];
  }
}