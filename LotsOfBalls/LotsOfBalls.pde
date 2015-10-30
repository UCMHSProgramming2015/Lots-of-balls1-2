int count = 50;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];


void setup() {
  size(1000, 800);

  int i = 0;
  while (i < count) {
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = 5 + i*5;
    i++;
  }
}

void draw() {
  background(0);

  int i = 0;
  while (i < count) {
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