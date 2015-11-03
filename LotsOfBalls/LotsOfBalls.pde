//declare variables
int c = 100;
int i;
//declare array
float[] x = new float[c];
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float[] diam = new float[c];

void setup() {
  //set size of canvas
  size(800, 600);
 
  //initialize i
  i=0;
  //set a while loop for while i is less than c to declare variables of circles, amount varying on c
  while(i<c) {
   
    y[i] = height/2;
    x[i] = width/2;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = random(30,70);
    i++;
  }
  
}

void draw() {
  //draw background to cover previous frame
  background(0);
  //set for loop to draw moving circles and set boundaries of canvas
  for(int j = 0; j<c; j++) {
    fill(random(255),random(255),random(255));
    ellipse(x[j], y[j], diam[j], diam[j]); //draw circles
    x[j] += velX[j]; //speed in x
    y[j] += velY[j]; //speed in y
    if (x[j] + diam[j]/2 >= width) {
    velX[j] = -abs(velX[j]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[j] - diam[j]/2 <= 0) {
    velX[j] = abs(velX[j]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[j] + diam[j]/2 >= height) {
    velY[j] = -abs(velY[j]);
    } else if (y[j] - diam[j]/2 <= 0) {
    velY[j] = abs(velY[j]);
    }
  }
}