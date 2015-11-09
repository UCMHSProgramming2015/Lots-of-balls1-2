int num = 8;

float[] x = new float[num];
float[] y = new float[num];
float[] Vx = new float[num];
float[] Vy = new float[num];
float[] diam = new float [num];

void setup() {
  colorMode(HSB, 360,100,100,100);
  size(800,600);
  strokeWeight(5);
  
  for (int i=0; i <num;i++) {
     x[i] = random(width*.25, width*.75);
    y[i] = random(height*.25, height*.75);
    Vy[i] = random(-5, 5);
    Vy[i] = random(-5, 5);
    diam[i] = random(3, 100);
  }
}

void draw() {
  background(0);
  fill(frameCount%360, 50,50);
  for (int i=0; i<num; i++) {
    ellipse(x[i],y[i],diam[i],diam[i]);
     x[i] += Vy[i];
     y[i] += Vy[i];
     
     if (x[i] >= width || x[i] <= 0) {
      Vx[i] *= -1;
      
     if (y[i] >= width || y[i] <= 0) {
       Vy[i] *= -1;
     }
     }
       if (x + diam[i]/2 >= width) {
    Vx = -abs(Vx);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    Vx = abs(Vx);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  if (y + diam/2 >= height) {
    Vy = -abs(Vy);
  } else if (y - diam/2 <= 0) {
    Vy = abs(Vy);
  }
  }
}