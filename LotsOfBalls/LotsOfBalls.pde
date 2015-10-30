//declare variables
int count=200;

float[]x=new float[count];
float[]y=new float[count];
float[]velX=new float[count];
float[]velY=new float[count];
float[]diam=new float[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize local variables
  for (int i=0; i < count; i++) {

    //create a while statement
    x[i]=random(width);
    x[i]=random(height);
    velX[i]=random(-5, 5);
    velY[i]=random(-5, 5);
    diam[i]=20;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //redefine the local variable

  //create a while statement
  for (int i=0; i <count; i++) {

    //draw balls
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[0] += velX[0];
    y[0] += velY[0];
    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
      fill(100, 180, 250); //if the ball hits the right wall it changes color
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
      fill(100, 250, 150);
    }
    if (y[i] + diam[i]/2 >= height) { //if the ball hits the top wall, assign y velocity the positive version of itself
      velY[i] = -abs(velY[i]);
      fill(200, 250, 250);
    } else if (y[i] - diam[i]/2 <= 0) { //if the ball hits the bottom wall, assign y velocity the positive version of itself
      velY[i] = abs(velY[i]);
    }
  }
}