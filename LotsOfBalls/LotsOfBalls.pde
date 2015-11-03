//declare variables
float diam;
float [] x = new float [150];
float [] y = new float [150];
float [] velX = new float [150];
float [] velY = new float [150];
float [] colorx = new float [150];
float [] colory = new float [150];
float [] colorz = new float [150];
int colorSet = 0;

void setup() {
  //set size of canvas
  size(600, 600);
  int i = 0;
  while (i<150) {
    //initialize variables
    x[i] = random(width);
    y[i] = random(height);
    diam = 30;
    velX[i] = random (-8, 8);
    velY[i] = random(-8, 8);
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
  while (i<150) {
    strokeWeight(7);
    stroke(colorx[i], colory[i], colorz[i]);
    
    if (colorSet == 0) {
      colorx[i] = y[i];
      colory[i] = 2*x[i]/y[i];
      colorz[i] = x[i];
    }
    else if (colorSet == 1) {
      colorx[i] = 2*x[i]/y[i];
      colory[i] = x[i];
      colorz[i] = y[i];
    }
    else if (colorSet == 2) {
      colorx[i]=x[i];
      colory[i]=y[i];
      colorz[i]=2*x[i]/y[i];
    }

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

void mousePressed() {
   if (colorSet == 0) {
     colorSet = 1;
   }
   else if (colorSet == 1) {
     colorSet = 2;
   }
   else if (colorSet == 2) {
     colorSet = 0;
   }
}