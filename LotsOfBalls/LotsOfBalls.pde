//declare variables

ArrayList<Ball> balls = new ArrayList<Ball>();
int count = 2;
float[] xpos = new float[count];
float[] ypos = new float[count];
float[] dX = new float[count];
float[] dY = new float[count];

void setup() {
  //set size of canvas
  size(800, 600);
  //initialize variables
  smooth();
  for (int i=0; i<count; i++) {
    xpos[i]=300;
    ypos[i]=500;
    dX[i]=random(-7, 7);
    dY[i]=random(-7, 7);
  }
  for(int i=0; i<count; i++){
  balls.add(new Ball());
  }
}

void draw() {
  background(100);
  for (int i=0; i<count; i++) {
    fill(255);
    ellipse(xpos[i], ypos[i], 30, 30);
    xpos[i] += dX[i];
    ypos[i] += dY[i];
  }
  for (int i=0; i<count; i++) {
    if (ypos[i] +15 >= height) {
      dY[i] = -abs(dY[i]);
    } else if (ypos[i] - 15 <= 0) {
      dY[i] = abs(dY[i]);
    } else if (xpos[i]-15<0 ||xpos[i]+15>width) {
      dX[i]*=-1;
    }
  }
  //pressing a will add more balls
  if (keyPressed) {
    if (key == 'a') {
      balls.add(new Ball());
    }
    //pressing b will remove balls
    if (key== 'b'&&balls.size()>0) {
      balls.remove(0);
    }
  }

  //draw background to cover previous frame
  background(255);
  fill(0);
  //direction text 
  text("press a to add more, b for less", 375, 50);
  //pulls balls from arraylist
  for (int i =0; i<balls.size(); i++) {
    Ball b = balls.get(i);

    b.display();
    b.move();
  }
}
//create class
class Ball {
  float x, y, velX, velY, a, b, c, d, diam;

  //the variables inside object Ball
  Ball() {
    //random color creator - light colors
    a=random(200, 255);
    b=random(200, 255);
    c=random(200, 255);
    //random opacity - reasonably opaque
    d = random(150, 200);
    //random diam between 40 and 50
    diam = random(40, 50);
    //random start position and velocity
    x = random(diam, width-diam);
    y = random(diam, height-diam);
    velX = random(-5, 5);
    velY = random(-5, 5);
  }
<<<<<<< HEAD
  //displays each ball
  void display() {
    noStroke();
    fill(a, b, c, d);
    ellipse(x, y, diam, diam);
  }

  void move() {
    //add velocity to position
    x += velX;
    y += velY;

    //bounce ball if it hits walls
    if (x + diam/2 >= width) {
      velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x - diam/2 <= 0) {
      velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y + diam/2 >= height) {
      velY = -abs(velY);
    } else if (y - diam/2 <= 0) {
      velY = abs(velY);
    }
=======
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
>>>>>>> refs/remotes/UCMHSProgramming2015/master
  }
}
