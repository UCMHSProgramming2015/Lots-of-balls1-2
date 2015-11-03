//declare variables
int count=200;

//create arrays 
float[]x=new float[count];
float[]y=new float[count];
float[]velX=new float[count];
float[]velY=new float[count];
float[]diam=new float[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //create a for statement delcalring int i, telling it to run when i is less than count, and incrementing it by one
  for (int i=0; i < count; i++) {

    //define positions of balls referring to the array
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

  //create a for statement delcalring int i, telling it to run when i is less than count, and incrementing it by one
  for (int i=0; i <count; i++) {

    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to positions referring to the array
    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
      fill(100, 180, 250); //if the ball hits the right wall it changes color
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) { //if the ball hits the top wall, assign y velocity the positive version of itself
      velY[i] = -abs(velY[i]);
      fill(200, 250, 250); //if the ball hits the right wall it changes color
    } else if (y[i] - diam[i]/2 <= 0) { //if the ball hits the bottom wall, assign y velocity the positive version of itself
      velY[i] = abs(velY[i]);
    }
  }
}