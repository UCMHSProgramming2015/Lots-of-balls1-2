//declare variables
int c = 20;
float[]x = new float[c];
float[]y = new float[c];
float[]velX = new float[c];
float[]velY =new float[c];
float[]diam = new float[c];
void setup() {
  //set size of canvas
  size(800, 600);
  for (int i = 0; i < c; i++) {
    //initialize variables
    x[i] = width/2;
    y[i] = height/2;
    diam[i] = 20+i;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for (int i = 0; i < c; i++) {
    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i]= -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
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