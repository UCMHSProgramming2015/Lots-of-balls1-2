//declare variables
int count =1000;
//declare arrays
float []x= new float[count];
float []y= new float[count];
float[] vx= new float[count];
float [] vy= new float[count];
float []d= new float[count];


void setup() {
  //set size of canvas
  size(800, 600);
  //initialize local variable
  for (int i=0; i<count; i++){
    //initialize variables
    x [i]= random(width);
    y [i]= random(height);
    d [i]= random(10);
    vx[i] = random(-5, 5);
    vy [i]= random(-5, 5);
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);

//initialize local variable
  for (int i=0; i<count; i++){
    fill(random(255),random(255),random(255));
    //draw ball
    ellipse(x [i], y [i], d [i], d [i]);

    //add velocity to position
    x [i]+= vx [i];
    y [i] += vy [i];

    //bounce ball 2 if it hits walls
    if (x [i]+d [i]/2>= width  ) {
      vx [i]*=-1;
    } else if (x [i]-d [i]/2<= 0) {
      vx [i]*=-1;
    }
    if (y [i]+d [i]/2>= height ) {
      vy [i]*=-1;
    } else if (y [i]-d [i]/2<= 0 ) {
      vy [i]*=-1;
    }
  }
}