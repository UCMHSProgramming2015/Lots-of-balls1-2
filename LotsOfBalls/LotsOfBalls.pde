//declare variables
int num = 500;
float [] x = new float[num];
float [] y = new float[num];
float [] velX = new float[num];
float [] velY = new float[num];
float [] diam = new float[num];
color [] c = new color[num];

void setup() {
  //set size of canvas
  size(800, 600);
  noStroke();

  //initialize variables
  for(int i = 0; i < num; i++) {
    c[i] = color(255,random(64,192));
    x[i] = random(width);
    y[i] = random(height);
    diam[i] = random(5,50);
    velX[i] = random(-10, 10);
    velY[i] = random(-10, 10);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  for (int i = 0; i < num; i += 1) {
  //change color and draw ball
    fill(c[i]);
    ellipse(x[i], y[i], diam[i], diam[i]);

  //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];

  //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width || x[i] - diam[i]/2 <= 0) {
      velX[i] *= -1;    //if the ball hits the right wall, assign x velocity the negative version of itself
    }
    if (y[i] + diam[i]/2 >= height || y[i] - diam[i]/2 <= 0) {
      velY[i] *= -1;
    }
  }
}