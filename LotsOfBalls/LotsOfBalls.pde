//declare variables
int quantity = 300;
float diamm = 30;
float[] x = new float[quantity];
float[] y = new float[quantity];
float[] velX = new float[quantity];
float[] velY = new float[quantity];
float[] diam = new float[quantity];

void setup() {
  //set size of canvas
  size(800, 600);
  //change colour to rainbow and all that which is probably screwed up
  colorMode(HSB,360,100,100);
  //no outline
  noStroke();
  //rendering
  smooth();

  //initialize variables
  for (int i = 0; i < quantity; i++){
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5,5);
    velY[i] = random(-5,5);
    diam[i] = random(10);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //bounce ball if it hits walls
  for (int i = 0; i < quantity; i++) {
    if (x[i] + diam[i]/2 >= width) {
       velX[i] = -velX[i];    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -velY[i];
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    
    //fill colour
    fill(map(mouseX,0,width,0,360), map(mouseY,0,height,0,360), random(300));
    noStroke();
    //draw ball
    ellipse(x[i], y[i], diam[i], diam[i]);
    
    //mouse colour picker thing
    fill(0);
    strokeWeight(4);
    stroke(map(mouseX,0,width,0,360), map(mouseY,0,height,0,360), 100);
    ellipse(mouseX,mouseY,diamm,diamm);
    line(mouseX,mouseY-diamm/2,mouseX,mouseY+diamm/2);
    line(mouseX-diamm/2,mouseY,mouseX+diamm/2,mouseY);

    //add velocity to position
    x[i] = x[i] + velX[i];
    y[i] = y[i] + velY[i];
  }
}