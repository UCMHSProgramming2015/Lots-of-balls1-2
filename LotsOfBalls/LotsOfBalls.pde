//declare variables
float diam;
float [] x = new float [200];
float [] y = new float [200];
float [] velX = new float [200];
float [] velY = new float [200];
float [] colorx = new float [200];
float [] colory = new float [200];
float [] colorz = new float [200];


void setup() {
  //set size of canvas
  size(600, 600);
  int i = 0;
  while (i<200) {
    //initialize variables
    x[i] = random(width);
    y[i] = random(height);
    diam = 30;
    velX[i] = random (-10, 10);
    velY[i] = random(-10, 10);
    colorx[i]=x[i];
    colory[i]=y[i];
    colorz[i]=2*x[i]/y[i];
    i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  int i = 0;
  while (i<200) {
    strokeWeight(7);
    colorx[i]=x[i];
    colory[i]=y[i];
    colorz[i]=2*x[i]/y[i];
    stroke(colorx[i], colory[i], colorz[i]);

    noFill();

    //draw ball
    ellipse(x[i], y[i], diam, diam);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
    //bounce ball if it hits walls

    if (x[i] + diam/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam/2 <= 0) {
      velX[i] = abs(velX[i]);
    }//if the ball hits the left wall, assign x velocity the positive version of itself

    if (y[i] + diam/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i++;
  }
}