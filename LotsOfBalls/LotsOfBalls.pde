float w,x,y,z,velW,velX,velY,velZ,diam;  //declare variables

void setup(){
size(800,600);  //set size of canvas

//initialize variables
w=width/2;
x=width/2;
y=height/2;
z=height/2;
diam=80;
velW=random(-5,5);
velX=random(-5,5);
velY=random(-5,5);
velZ=random(-5,5);
}

void draw(){
background(0);    //draw background to cover previous frame
ellipse(x,y,diam,diam);  //draw ball
ellipse(w,z,diam,diam);  //draw second ball
//add velocity to position
w+=velW;
x+=velX;
y+=velY;
z+=velZ;


//bounce ball if it hits walls
  if(x+diam/2>=width){
    velX=-abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if(x-diam/2<=0){
    velX=abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if(y+diam/2>=height){
    velY=-abs(velY);
  } else if(y-diam/2<=0){
    velY=abs(velY);
  }
  if(w+diam/2>=width){
    velW=-abs(velW);
  } else if(w-diam/2<=0){
    velW=abs(velW);
  }
  if(z+diam/2>=height){
    velZ=-abs(velZ);
  } else if(z-diam/2<=0){
    velZ=abs(velZ);
  }
}
