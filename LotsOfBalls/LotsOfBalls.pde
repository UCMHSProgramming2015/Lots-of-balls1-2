//declare variables
int count =10;
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
  int i=0;
  while (i<count) {
    //initialize variables
    x [i]= width/2;
    y [i]= height/2;
    d [i]= 80;
    vx[i] = random(-5, 5);
    vy [i]= random(-5, 5);
    i++;
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);


  int i=0;
  while (i<count) {
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
    i++;
  }
}