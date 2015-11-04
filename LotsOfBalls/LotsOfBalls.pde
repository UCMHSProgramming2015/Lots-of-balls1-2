//initialize count
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
  //set the color to change between a variety of colors in order (rainbow
    colorMode(HSB,360,100,100,100);
  //declare a local variable called i
  int i = 0;

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
  //declare a local variable called i
int i = 0;
while (i < count){ //while the value of i is less that the value of count...
fill(frameCount%360, 200, 100, frameRate%500); //set the fill to change colors
if(x[i]>400) { //if x[i] is greater than 400...
fill(frameCount%360, 50, 100);  //set the fill to change colors
}
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
  if (y[i] + diam[i]/2 >= height) {     //if the ball hits the bottom wall, assign y velocity the negative version of itself
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam[i]/2 <= 0) {   //if the ball hits the upper wall, assign y velocity the positive version of itself
    velY[i] = abs(velY[i]);
  }
    //i increases by 1
  i++ ;
}
}