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
  for (int i = 0; i < num; i++) {
    c[i] = color(255, random(64, 192));
    diam[i] = random(5, 50);
    x[i] = random(diam[i]+1, width-diam[i]-1);            //position away from edge to prevent fluctuating back and forth
    y[i] = random(diam[i]+1, height-diam[i]-1);
    velX[i] = (1-2*round(random(0, 1)))*random(1, 5);    //velocity is between 5 and 10 to the right or left
    velY[i] = (1-2*round(random(0, 1)))*random(1, 5);
  }
  diam[20] = 50;
  c[20] = color(255, 0, 0);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  for (int i = 0; i < num; i += 1) {
    //change color and draw ball
    fill(c[i]);
    ellipse(x[i], y[i], diam[i], diam[i]);

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width || x[i] - diam[i]/2 <= 0) {
      velX[i] *= -1;    //if the ball hits the right wall, assign x velocity the negative version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] *= -1;
    } else {
      velY[i] += 0.5;    //emulates downward acceleration
    }

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];
  }
}