int count=2;  //declare and initialize integer count
//declare and initialize arrays
float[]x=new float[count];
float[]y=new float[count];
float[]velX=new float[count];
float[]velY=new float[count];
float[]diam=new float[count];


void setup(){
size(800,600);  //set size of canvas
int i=0;  //declare local integer i
while(i<count){
//initialize variables
x[i]=random(width);
y[i]=random(height);
diam[i]=20+20*i;
velX[i]=random(-5,5);
velY[i]=random(-5,5);
i++;
}
}

void draw(){
background(0);    //draw background to cover previous frame
int i=0;
while(i<count){
ellipse(x[i],y[i],diam[i],diam[i]);  //draw ball
//add velocity to position
x[i]+=velX[i];
y[i]+=velY[i];



//bounce ball if it hits walls
  if(x[i]+diam[i]/2>=width){
    velX[i]=-abs(velX[i]);    //if the ball hits the right wall, assign x[0] velocity the negative version of itself
  } else if(x[i]-diam[i]/2<=0){
    velX[i]=abs(velX[i]);     //if the ball hits the left wall, assign x[0] velocity the positive version of itself
  }
  if(y[i]+diam[i]/2>=height){
    velY[0]=-abs(velY[i]);
  } else if(y[i]-diam[i]/2<=0){
    velY[i]=abs(velY[i]);
  }
  i++;
}
}