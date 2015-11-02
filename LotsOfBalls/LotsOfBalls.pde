//declare variables
//float x1, y1, velX1, velY1, diam;
//float colorx1, colory1, colorz1, 
float diam;
float [] x = new float [2];
float [] y = new float [2];
float [] velX = new float [2];
float [] velY = new float [2];
float [] colorx = new float [2];
float [] colory = new float [2];
float [] colorz = new float [2];


void setup() {
  //set size of canvas
  size(600, 600);
  int i = 0;
  while (i<2) {
    //initialize variables
    x[i] = random(width);
    y[i] = random(height);
    diam = 80;
    velX[i] = random (-5, 5);
    velY[i] = random(-5, 5);
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
  while (i<2) {
    strokeWeight(10);
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