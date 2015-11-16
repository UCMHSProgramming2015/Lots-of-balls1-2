int num = 12;

float[] x = new float[num]; //create varibales
float[] y = new float[num];
float[] xVelocity = new float[num];
float[] yVelocity = new float[num];
float[] diam = new float [num];

void setup() {
  colorMode(HSB, 360,100,100,100); //create colors tha5 change
  size(800,600);
  strokeWeight(10);
  
  for (int i=0; i <num;i++) {            //i variable
     x[i] = random(width*.25, width*.75); //random placement
    y[i] = random(height*.25, height*.75);
    xVelocity[i] = random(-5, 5);   // speeds
    yVelocity[i] = random(-5, 5);
    diam[i] = random(3, 100);
  }
}

void draw() {
  background(0);
  fill(frameCount%360, 50,50);  //how fast the balls change
  for (int i=0; i<num; i++) {
    ellipse(x[i],y[i],diam[i],diam[i]);
     x[i] += xVelocity[i];          //changes the velocity
     y[i] += yVelocity[i];
     
     if (x[i] >= width || x[i] <= 0) {    //reverse direction
      xVelocity[i] *= -1;
      
     if (y[i] >= width || y[i] <= 0) {
       yVelocity[i] *= -1;
       
       
      
      
       
     }
     }
  }
}

     
    
  