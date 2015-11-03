int lmao = 300;
int i;
//declare variables
float[] x = new float[lmao];//creates array for variables
float[] y = new float[lmao];
float[] velX = new float[lmao];
float[] velY = new float[lmao];
float[] diam = new float[lmao];
void setup() {
  //set size of canvas
  size(800, 600);
i = 0;//gives i a value of 0
while(i < lmao){//while lmao variable is greater than the i (which is always 0), all of these variables will have the following random values
  x[i] = random(width);
  y[i] = random(height);
  velX[i] = random(-5,5);
  velY[i] = random(-5,5);
  diam[i] = random(20,80);
  i++;
}
}  

void draw() {
  //draw background to cover previous frame
  background(0);//background of black
for(int i = 0;i < lmao; i++) {//puts lmao in a for loop so that everytime lmao is greater than i(which is once again 0) i will continually increase (which makes the balls move
fill(random(255),random(255),random(255));
  ellipse(x[i], y[i], diam[i], diam[i]);
ellipse(x[i], y[i], diam[i], diam[i]);
  //add velocity to position
  x[i] += velX[i];
  y[i] += velY[i];
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
<<<<<<< HEAD
if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i ] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
}
}
=======
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
}
>>>>>>> refs/remotes/UCMHSProgramming2015/master
