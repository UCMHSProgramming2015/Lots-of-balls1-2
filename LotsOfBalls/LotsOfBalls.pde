//declare variables
int count=50;

float[]x=new float[count];
float[]y=new float[count];
float[]velX=new float[count];
float[]velY=new float[count];
float[]diam=new float[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize local variables
  int i=0;
  
  //create a while statement
  while (i < count) {
    x[i]=random(width);
    x[i]=random(height);
    velX[i]=random(-5, 5);
    velY[i]=random(-5, 5);
    diam[i]=10 +i;
    i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //redefine the local variable
  int i=0;

  //create a while statement
  while (i<count) {

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
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i++;
  }
}