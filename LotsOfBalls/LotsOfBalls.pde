//declare variables
int c = 100;
float[] x = new float[c];
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float[] red = new float[c];
float[] green = new float[c];
float[] blue = new float[c];
float diam;

void setup() {
  //set size of canvas
  size(800, 600);
  
  for(int i = 0; i < c; i++){
    x[i] = (i+1)*2;
    y[i] = (i+1)*2;
    velX[i] = random(i+3, (i+1)*3);
    velY[i] = random(i+3, (i+1)*3);
    red[i] = i*2.5;
    blue[i] = 255-i*2.5;
    if(velX[i] >=11 || velY[i] >=11){
      velX[i] = random(3, 10);
      velY[i] = random(3, 10);
    }
  }

  //initialize variables
diam = 30;
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  for(int i = 0; i < c; i++){
    noStroke();
    fill(red[i], 0, blue[i], random(150));
    ellipse(x[i], y[i], diam, diam);

  //add velocity to position
  x[i] += velX[i];
  y[i] += velY[i];

  //bounce ball if it hits walls
  if (x[i] + diam/2 >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam/2 <= 0) {
    velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[i] + diam/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
  }
}