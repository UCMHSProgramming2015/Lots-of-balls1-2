int i=0;
float count;


void setup(){
size(800,600);  //set size of canvas

//initialize variables
x[i]=random(width);
y[i]=random(height);
diam[i]=20+20*i;
velx[i]=random(-5,5);
vely[i]=random(-5,5);
}

void draw(){
background(0);    //draw background to cover previous frame
ellipse(x[i],y[i],diam[i],diam[i]);  //draw ball
//add velocity to position
x[0]+=velx[0];
y[0]+=vely[0];



//bounce ball if it hits walls
  if(x[0]+diam/2>=width){
    velx[0]=-abs(velx[0]);    //if the ball hits the right wall, assign x[0] velocity the negative version of itself
  } else if(x[0]-diam/2<=0){
    velx[0]=abs(velx[0]);     //if the ball hits the left wall, assign x[0] velocity the positive version of itself
  }
  if(y[0]+diam/2>=height){
    vely[0]=-abs(vely[0]);
  } else if(y[0]-diam/2<=0){
    vely[0]=abs(vely[0]);
  }
}

