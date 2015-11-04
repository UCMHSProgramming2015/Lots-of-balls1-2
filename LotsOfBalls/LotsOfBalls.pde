int woof = 300;

float[] x = new float[woof];
float[] y = new float[woof];
float[] velX = new float[woof];
float[] velY = new float[woof];
float[] diam = new float[woof];

void setup() {
  size(800, 600);
  colorMode(HSB,255,50,100);
  for(int i = 0;i < woof; i++)
  {
    x[i] = random(width);
    y[i]= random(height);
    diam[i] = 15;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
  }
}

void draw() {
  background(0);
  noStroke();
  //fill(map(width,0,width,0,width),map(width,0,height,0,width),random(200));
  for(int i = 0;i < woof; i++)
  {
  //fill(x[i],y[i],200);
  fill(random(200),random(200),random(200));
  ellipse(x[i], y[i], diam[i], diam[i]);
  x[i] += velX[i];
  y[i] += velY[i];
  if (x[i] + diam[i]/2 >= width) {
    velX[i] = -abs(velX[i]);
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]);
  }
  if (y[i] + diam[i]/2 >= height) {
    velY[i] = -abs(velY[i]);
  } else if (y[i] - diam[i]/2 <= 0) {
    velY[i] = abs(velY[i]);
  }
  }
}