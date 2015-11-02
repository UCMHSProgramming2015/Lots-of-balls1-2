
int count = 50;
//declare arrays
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];



void setup() {
  //set size of canvas
  size(800, 600);
  //declare a local variable called i
  int i = 0;

  //initialize variables

  //initialize variables
  while (i < count) {
  x[i] = random(width);
  y[i] = random(height);
  diam[i] = random(5,100);
  velX[i] = random(-5,5);
  velY[i] = random(-5,5);
  //i increases by 1
  i ++ ;
}
}
void draw() {
  //draw background to cover previous frame
  background(0);
int i = 0;
while (i < count){
  //draw ball
  ellipse(x[i], y[i], diam[i], diam[i]);

  //add velocity to position
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
  i++ ;
}
}