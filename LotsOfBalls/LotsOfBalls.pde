//declare variables
int c = 50;  //count variable
float[]x = new float[c];  //create array for x position
float[]y = new float[c]; //create array for y position
float[]velX = new float[c]; //create array for velocity speed of x
float[]velY =new float[c];  //create array for velocity speed of y
float[]diam = new float[c];  //create an array for diameter of balls
void setup() {
  size(800, 600);  //set size of canvas
  for (int i = 0; i < c; i++) {  //create for loop to condense code
    //initialize variables
    x[i] = width/2; 
    y[i] = height/2;
    diam[i] = 20+i;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
  }
}

void draw() {
  background(0);  //draw background to cover previous frame
  fill(random(255), random(255), random(255), 50);  //make all circles have 1 random color with an opacity of 50
  noStroke();  //no outline on the circles
  for (int i = 0; i < c; i++) {
    ellipse(x[i], y[i], diam[i], diam[i]);  //draw ball(s)

    x[i] += velX[i];  //add velocity to position
    y[i] += velY[i];  //add velocity to position

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i]= -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) { 
      velY[i] = -abs(velY[i]);    //if the ball hits the top wall, assign y velocity the negative version of itself
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);      //if the ball hits the bottom wall, assign y velocity the positive version of itself
    }
  }
}