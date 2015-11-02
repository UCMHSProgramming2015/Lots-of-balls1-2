int count = 300;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];

void setup() {
  size(800, 600);
  int i = 0;
  colorMode(HSB,width,100,100);
  smooth();
  while (i < count)
  {
    x[i] = random(width);
    y[i]= random(height);
    diam[i] = 15;
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    i++;
  }
}

void draw() {
  background(0);
  noStroke();
  fill(map(width,0,width,0,width),map(width,0,height,0,width),random(200));
  int i = 0;
  while (i < count)
  {
  fill(x[i],y[i],200);
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
  i++;
  }
}