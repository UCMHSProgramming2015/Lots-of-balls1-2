//declare variables
int count=2;

float[]x=new float[count];
float[]y=new float[count];
float[]velX=new float[count];
float[]velY=new float[count];
float[]diam=new float[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  int i=0;
  while (i < count) {
    x[i]=random(width);
    x[i]=random(height);
    velX[i]=random(-5, 5);
    velY[i]=random(-5, 5);
    diam[i]=10 +i;
  }

  //x[0]= width/2;
  //y[0]= height/2;
  //x[i]= width/4;
  //y[i]=height/4;

  //velX[0] = random(-5, 5);
  //velY[0] = random(-5, 5);
  //velX[i]=random(-6,6);
  //velY[i]=random(-6,6);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  int i=0;

  while (i<count) {

    //draw balls
    ellipse(x[0], y[0], diam[0], diam[0]);
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