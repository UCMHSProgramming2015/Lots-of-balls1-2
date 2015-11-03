//make the array contain 50 components
int count = 50;
//initializes the pieces of the array
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];


void setup() {
  size(1000, 800);
//as the drawing is being made, the variable "i" is used to fill in for the component numbers
  int i = 0;
  //in this "while", the i is put in instead of 0,1,3...etc.
  while (i < count) {
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = 5 + i*5;
    i++;
  }
}

void draw() {
  background(0);
//the variable i must be inserted in draw as well to keep the changes happening with each frame
//it is not carried over into the next block of code
  int i = 0;
  while (i < count) {
    ellipse(x[i], y[i], diam[i], diam[i]);

    x[i] += velX[i];

    y[i] += velY[i];
// these if statements make the balls bounce on the walls and have the lot of them change color with each bounce
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]); 
      fill(random(255),random(255),random(255));
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     
    }

<<<<<<< HEAD
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
      fill(random(255),random(255),random(255));
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i++;
=======
  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
>>>>>>> refs/remotes/UCMHSProgramming2015/master
  }
}
