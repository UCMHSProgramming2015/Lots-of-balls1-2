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

    if (key== 'b'&&balls.size()>2) {
      balls.remove(balls.size()-1);      //always has the first two original ones

    }
  }

  //draw background to cover previous frame
  background(255);
  fill(0);
  text("press a to add more, b for less", 375, 50);
  for (int i =0; i<balls.size(); i++) {
    Ball b = balls.get(i);
    //draw ball
    b.display();
    b.move();
  }
}
class Ball {
  float x, y, velX, velY, a, b, c, d, diam;


  Ball() {
    a=random(200, 255);
    b=random(200, 255);
    c=random(200, 255);
    d = random(150, 200);
    diam = random(40, 50);
    x = random(diam, width-diam);
    y = random(diam, height-diam);
    velX = random(-5, 5);
    velY = random(-5, 5);
  }
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
  }
}