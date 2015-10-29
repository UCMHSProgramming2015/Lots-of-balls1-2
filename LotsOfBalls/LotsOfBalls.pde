//declare variables
int count =2;
//declare arrays
float []x= new float[count];
float []y= new float[count];
float[] vx= new float[count];
float [] vy= new float[count];
float []d= new float[count];


void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x [0]= width/2;
  y [0]= height/2;
  d [0]= 80;
  vx[0] = random(-5, 5);
  vy [0]= random(-5, 5);
  x[1]= width/4;
  y[1]= height/4;
  d[1]= 200;
  vx[1] = random(-10, 10);
  vy[1]= random (-10, 10);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball 1
  ellipse(x[0], y[0], d[0], d[0]);

  //add velocity to position
  x[0]+= vx[0];
  y[0] += vy[0];

  //bounce ball 1 if it hits walls
  if (x [0]+ d[0]/2 >= width) {
    vx [0]= -abs(vx[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x [0]- d[0]/2 <= 0) {
    vx [0]= abs(vx[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y [0]+ d[0]/2 >= height) {
    vy[0] = -abs(vy[0]);
  } else if (y [0]- d[0]/2 <= 0) {
    vy [0]= abs(vy[0]);
  }

  //draw ball 2
  ellipse(x [1], y [1], d [1], d [1]);

  //add velocity to position
  x [1]+= vx [1];
  y [1] += vy [1];

  //bounce ball 2 if it hits walls
  if (x [1]+d [1]/2>= width  ) {
    vx [1]*=-1;
  } else if (x [1]-d [1]/2<= 0) {
    vx [1]*=-1;
  }
  if (y [1]+d [1]/2>= height ) {
    vy [1]*=-1;
  } else if (y [1]-d [1]/2<= 0 ) {
    vy [1]*=-1;
  }
}