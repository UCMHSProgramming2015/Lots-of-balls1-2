
//declare variables
//float [] x;
//float x, y, velX, velY, diam,x[1] ,b, velx[1], velB ;
int count=500;
//declare arrays
float [] x = new float [count];
float [] y = new float [count];
float [] velX = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];



//int[numbers];
//color[] c;

//float[] n;

//initialize arrays

//numbers = new int [10];
//c = new color [5];
//n = {35.6, 41.7, 2.0001};


//declaring and initializing arrays
//int[] numbers = new int [20];


void setup() {
  //set size of cx[1]nvx[1]s
  size(800, 600);
  int i=0;


  //initialize variables
  while (i<count) {
    x[i]= random(0, width);
    y[i]= random(0, height);
    velX[i]= random(-5, 5);
    velY[i]= random(-5, 5);
    diam[i]=random(5, 100);
    //i insreases by 1
    i++;
  }

  //x[0] = width/2;
  //y[0] = height/2;
  //diam[0] = 80;
  //velX[0] = random(-5, 5);
  //velY[0] = random(-5, 5);
  //x[1]= width/3;
  //y[1]= height/2;
  //velX[1]= random(-10,10);
  //velY[1] = random(-10,10);
}

void draw() {
  //draw background to cover previous frame
  background(0);
  int i=0;
  //draw ball

  //ellipse(x[0], y[0], diam[0], diam[0]);
  //ellipse (x[1], y[1], diam[1], diam[1]);

  //add velocity to position
  //x[i] += velX[i];
  //y[i] += velY[i];

  //bounce ball if it hits walls
  while (i< count) {
    fill(random(60), random(80), random(45));
    ellipse(x[i], y[i], diam[i], diam[i]);
    x[i] += velX[i];
    y[i] += velY[i];
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i++;
  }
  //ellipse(x[1],y[1],diam[0],diam[0]);
  //x[1]+=velX[1];
  //y[1] += velY[1];

  //if(x[1] + diam[1]/2 >= width) {
  //velX[1] =-abs(velX[1]);
  //} else if (x[1]-diam[1]/2 <=0) {
  //velX[1] = abs(velX[1]);
  //}
  //if (y[1] + diam[1]/2 >= height) {
  //velY[1] = -abs(velY[1]);
  //} else if( y[1]-diam[1]/2 <= 0) {
  //velY[1] = abs(velY[1]);
  //}
}