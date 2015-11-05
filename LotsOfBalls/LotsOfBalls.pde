  int count = 200; 
  float[] x = new float[count];
  float[] y = new float[count];
  float[] velx = new float[count];
  float[] vely = new float[count];
  float[] diam = new float[count];
  
void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for(int i = 0; i< count; i++){
  x[i] = random(0,width);
  y[i] = 0;
  diam[i] = random(3,10);
  velx[i] = random(-1,3);
  vely[i] = random(1,5); 
  }
}

void draw() {
  //draw background to cover previous frame
  background(0);
  for(int i = 0; i< count; i++){
  
    ellipse(x[i], y[i], diam[i], diam[i]);
  
    //add velocity to position
    x[i] += velx[i];
    y[i] += vely[i];
  
    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velx[i] = -abs(velx[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velx[i] = abs(velx[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) {
      x[i] = random(0,width);
      y[i] = 0;
    }
    
    if(mousePressed == true){
    fill(100,200,255);
    } else {
    fill(0,255,0);
    }
  }
}
