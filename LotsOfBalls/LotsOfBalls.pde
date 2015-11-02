
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

int count=50;
//declare arrays
float [] x = new float [count];
float [] y = new float [count];
float []velX = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];



void setup() {
  //set size of canvas
  size(800, 600);
  
  //declare a local variable called i- only for the setup
  int i=0;
 //initialize variables
  while(i<count){
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
//declare local variable j
  int j=0;
  while(j<count){
   ellipse(x[j], y[j], diam[j], diam[j]);    //draw ball

   //add velocity to position
  x[j] += velX[j];
  y[j] += velY[j];
//bounce ball if it hits walls
  if (x[j] + diam[j]/2 >= width) {
    velX[j] = -abs(velX[j]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[j] - diam[j]/2 <= 0) {
    velX[j] = abs(velX[j]);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y[j] + diam[j]/2 >= height) {
    velY[j] = -abs(velY[j]);
  } else if (y[j] - diam[j]/2 <= 0) {
    velY[j] = abs(velY[j]);
  }
 j++;
}
}