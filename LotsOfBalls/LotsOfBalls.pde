//declare variables

ArrayList<Ball> balls = new ArrayList<Ball>();
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  smooth();
  balls.add(new Ball());
  balls.add(new Ball());
}

void draw() {
  if (keyPressed) {
    if (key == 'a') {
      balls.add(new Ball());
    }
  }

  //draw background to cover previous frame
  background(0);
  for (int i =0; i<balls.size(); i++) {
    Ball b = balls.get(i);
    //draw ball
    b.display();
    b.move();
  }
}
class Ball {
  float x, y, velX, velY;
  float diam = 50;
  Ball() {
    x = random(diam, width-diam);
    y = random(diam, height-diam);
    velX = random(-7, 7);
    velY = random(-7, 7);
  }
  void display() {

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
  }
}