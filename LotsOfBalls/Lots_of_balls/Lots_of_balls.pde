float[] x= new float [100];
float[] y= new float [100];
float[] velX= new float [100];
float[] velY= new float [100] ;
float diam; //declaring variables and arrays

void setup() {
  //set size of canvas
  size(800, 600);
  for(int i=0; i<100; i++) {
     x[i] = random(width);
     y[i] = random(height);
     velX[i] = 5;
     velY[i] = 6;   
     diam = 45; //initializing values
  }
 }

void draw() {
     
  background(0); //setting background
  for(int i=0; i<100; i++){  //only applying to 100 balls
 
    //draw balls
    fill(255,35,345);
    ellipse(x[i], y[i], diam, diam);
    //add velocities to position
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