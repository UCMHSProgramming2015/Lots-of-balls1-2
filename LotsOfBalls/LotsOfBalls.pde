//declare variables
int c = 40;
float[] x = new float[c]; 
float[] y = new float[c];
float[] velX = new float[c];
float[] velY = new float[c];
float[] diam = new float[c];

//distance function
float d(float x1,float y1,float x2,float y2) {
  return sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
}

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  for (int i = 0; i < c; i++) {
    diam[i] = random(20,40);
    x[i] = random(diam[i], width-diam[i]);
    y[i] = random(diam[i], height-diam[i]);
    velX[i] = random(-10, 10);
    velY[i] = random(-10, 10);
  }
  noStroke();
}

void draw() {
  //draw background to cover previous frame
  background(200, 50, 100);
  //for through the balls
  for (int j = 0; j<c; j++) {
    //Fill blue if touching other ball, otherwise white.
    for(int k = 0; k<c; k++) {
      if(d(x[j],y[j],x[k],y[k])<(diam[j]+diam[k])/2&&j!=k) {
        fill(0,0,255);
        break;
      }
      fill(255);
    }
    //draw ball
    ellipse(x[j], y[j], diam[j], diam[j]);
    //add velocity to position
    x[j] += velX[j];
    y[j] += velY[j];
    //bounce ball if it hits walls
    if (x[j] + diam[j]/2 >= width ||x[j] - diam[j]/2 <= 0) {
      velX[j] = -velX[j];
    }
    if (y[j] + diam[j]/2 >= height || y[j] - diam[j]/2 <= 0) {
      velY[j] = -velY[j];
    }
  }
}