//declaring and initializing a variable in one line looks like this: float x = 10;

//declaring an array looks like this:
int count = 10;

//declare and initialize arrays
float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];


void setup() {
  size(600, 600);
  int i = 0;
  while (i<count){
    x[i] = random(width);
    y[i] = random(height);
    velX[i] = random(-5, 5);
    velY[i] = random(-5, 5);
    diam[i] = 10 + i*10;
    i++;
  }
}

void draw() {
  background(0);
  for(int i= 0; i <count; i++){
    ellipse(x[i], y[i], diam[i], diam[i]);
    x[i] += velX[i];
    y[i] += velY[i];

    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }

    if (y[i] + diam[i]/2 >= height) {
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) {
      velY[i] = abs(velY[i]);
    }
    i++;
  }
}
void keyPressed(){
  if (keyCode==ESC){
    exit();
  }
  if (keyCode==UP){
    fill(random(0,255), random(0,255), random(0,255));
  }
   if (keyCode==DOWN){
    fill(255);

}
}