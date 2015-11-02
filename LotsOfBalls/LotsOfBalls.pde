
//declaring arrays
//int[] numbers;
//color[] c;
//float[] n;


//initializing arrays
//numbers= new int[10];
//c= new colour [5];
//n = {35.6, 41,7, 2.0001};

//declaring and initializing arrays
//int[] numbers= new int[200];     creates space for 200 new integers

//declare arrays

float [] x = new float [2];
float [] y = new float [2];
float []velX = new float [2];
float [] velY = new float [2];
float [] diam = new float [2];



void setup() {
  //set size of canvas
  size(800, 600);
  
  //declare a local variable called i- only for the setup
  int i=0;
 //initialize variables
  while(i<2){
x[i]=random(0,width);
y[i]=random(0,height);
diam[i]=random(5,100);
velX[i]=random(-5,5);
velY[i]=random(-5,5);
i++; // i increases by 1
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1],y[1],diam[1],diam[1]);

  //add velocity to position
  x[0] += velX[0];
  y[0] += velY[0];
  x[1]+= velX[1];
  y[1]+=velY[1];

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
  if(x[1]+diam[1]/2>=width){
  velX[1]= -abs(velX[1]);
  } else if(x[1]-diam[1]/2<=0){
   velX[1]=abs(velX[1]); 
  }
  if(y[1]+diam[1]/2>=height){
   velY[1]=-abs(velY[1]); 
  } else if(y[1]-diam[1]/2<=0){
   velY[1]=abs(velY[1]); 
  }
}