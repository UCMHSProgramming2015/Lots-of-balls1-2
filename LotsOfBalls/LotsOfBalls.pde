//declare variables
<<<<<<< HEAD
float diam;
float [] x = new float [150];
float [] y = new float [150];
float [] velX = new float [150];
float [] velY = new float [150];
float [] colorx = new float [150];
float [] colory = new float [150];
float [] colorz = new float [150];
int colorSet = 0;
=======
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

>>>>>>> refs/remotes/origin/Creating-arrays

void setup() {
  //set size of canvas
  size(600, 600);
<<<<<<< HEAD
  for(int i=0; i<150; i++) {
    //initialize variables
    x[i] = random(width);
    y[i] = random(height);
    diam = 30;
    velX[i] = random (-8, 8);
    velY[i] = random(-8, 8);
    colorx[i]=x[i];
    colory[i]=y[i];
    colorz[i]=2*x[i]/y[i];
=======
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
>>>>>>> refs/remotes/origin/Creating-arrays
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
<<<<<<< HEAD
  for(int i=0; i<150; i++) {
    //set stroke weight and color
    strokeWeight(7);
    stroke(colorx[i], colory[i], colorz[i]);
    
    //set colors
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
=======
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
>>>>>>> refs/remotes/origin/Creating-arrays
  }
 
}

void mousePressed() {
  //change colors when mouse is pressed
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