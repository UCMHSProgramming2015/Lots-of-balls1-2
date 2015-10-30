//declare variables
int count = 100;
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
color[] clr = new color[count];

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for(int i = 0; i < count; i++)
  {
    x[i] = random(40, width - 40);
    y[i] = random(40, height - 40);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = random(20, 80);
    clr[i] = color(random(255), random(255), random(255));
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for(int i = 0 ; i < count; i++)
  {
    //draw ball
    fill(clr[i]);
    ellipse(x[i], y[i], diam[i], diam[i]);
  
    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
  
    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -velX[i];    //if the ball hits the right wall, assign x velocity the negative version of itself, move it back to the boundary, and randomize the color and diameter
      clr[i] = color(random(255), random(255), random(255));
      diam[i] = random(20, 80);
      x[i] = width - diam[i]/2;
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = -velX[i];     //if the ball hits the left wall, assign x velocity the positive version of itself, move it back to the boundary, and randomize the color and diameter
      clr[i] = color(random(255), random(255), random(255));
      diam[i] = random(20, 80);
      x[i] = diam[i]/2;
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -velY[i];
      clr[i] = color(random(255), random(255), random(255));
      diam[i] = random(20, 80);
      y[i] = height - diam[i]/2;
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = -velY[i];
      clr[i] = color(random(255), random(255), random(255));
      diam[i] = random(20, 80);
      y[i] = diam[i]/2;
    }
  }
}