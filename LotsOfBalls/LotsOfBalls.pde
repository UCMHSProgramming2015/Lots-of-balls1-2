int count=15;  //declare and initialize integer count
int i;  //declare integer i
//declare and initialize arrays
float[]x=new float[count];
float[]y=new float[count];
float[]velX=new float[count];
float[]velY=new float[count];
float[]diam=new float[count];


void setup(){
size(800,600);  //set size of canvas
for(i=0;i<count;i+=1){  //while i<count, increase i by 1
//initialize variables
x[i]=random(width);
y[i]=random(height);
diam[i]=20+20*i;
velX[i]=random(-5,5);
velY[i]=random(-5,5);
}
}

void draw(){
background(0);    //draw background to cover previous frame
for(i=0;i<count;i+=1){  //while i<count, increase i by 1
  fill(random(255),random(255),random(255));  //fill balls with random color
  ellipse(x[i],y[i],diam[i],diam[i]);  //draw ball
  //add velocity to position
  x[i]+=velX[i];
  y[i]+=velY[i];



//bounce ball if it hits walls
  if(x[i]+diam[i]/2>=width){
    velX[i]=-abs(velX[i]);    //if the ball hits the R wall, assign x[0] velocity the negative version of itself
  } else if(x[i]-diam[i]/2<=0){
    velX[i]=abs(velX[i]);     //if the ball hits the L wall, assign x[0] velocity the positive version of itself
  }
  if(y[i]+diam[i]/2>=height){
    velY[i]=-abs(velY[i]);  //if the ball hits the bottom wall, assign y[0] velocity the negative version of itself
  } else if(y[i]-diam[i]/2<=0){
    velY[i]=abs(velY[i]);  //if the ball hits the top wall, assign y[0] velocity the negative version of itself
  }
}
}