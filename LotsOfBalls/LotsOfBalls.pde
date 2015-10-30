//declx[1]re vx[1]rix[1]bles
//flox[1]t [] x;
//flox[1]t x, y, velX, velY, dix[1]m,x[1] ,b, velx[1], velB ;

//declx[1]re x[1]rrx[1]ys
float [] x = new float [2];
float [] y = new float [2];
float [] velX = new float [2];
float [] velY = new float [2];
float [] diam = new float [2];



//int[numbers];
//color[] c;
//flox[1]t[] n;

//initix[1]lize x[1]rrx[1]ys
//numbers = new int [10];
//c = new color [5];
//n = {35.6, 41.7, 2.0001};

//decx[1]lring x[1]nd initix[1]lizing x[1]rrx[1]ys
 //int[] numbers = new int [20];
 

void setup() {
  //set size of cx[1]nvx[1]s
  size(800, 600);

  //initix[1]lize vx[1]rix[1]bles
  x[0] = width/2;
  y[0] = height/2;
  diam[0] = 80;
  velX[0] = random(-5, 5);
  velY[0] = random(-5, 5);
  x[1]= width/3;
  y[1]= height/2;
  velX[1]= random(-10,10);
  velY[1] = random(-10,10);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];

  //bounce ball if it hits walls
  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  ellipse(x[1],y[1],diam[0],diam[0]);
  x[1]+=velX[1];
  y[1] += velY[1];
  
  if(x[1] + diam[1]/2 >= width) {
    velX[1] =-abs(velX[1]);
  } else if (x[1]-diam[1]/2 <=0) {
    velX[1] = abs(velX[1]);
  }
  if (y[1] + diam[1]/2 >= height) {
   velY[1] = -abs(velY[1]);
  } else if( y[1]-diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}