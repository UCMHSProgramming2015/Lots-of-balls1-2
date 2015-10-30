//declare a class which contains the ball variables
class Ball{
  float x, y;
  float velX, velY;
  float diam;
  
  Ball(){
    //initialize variables
    x = random(width);
    y = random(height);
    diam = 80;
    velX = random(-5, 5);
    velY = random(-5, 5);
  }
  
  void run(){
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
      
    //add velocity to position
    x += velX;
    y += velY;
  }
  void bdraw(){
    //draw ball
    ellipse(x, y, diam, diam);
  }
}

ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  //set size of canvas
  size(800, 600);
  
  balls.add(new Ball());
  balls.add(new Ball());
}

void draw() {
  //draw background to cover previous frame
  background(0);
  
  for(Ball ball: balls){
    ball.run();
    ball.bdraw();
  }
}