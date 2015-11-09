
int count = 300; //create 300 balls

//declare and initialize arrays
//name = new type[size]
//name = {insert data here}
float[] x = new float[count]; //create location and movement variables for balls
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = new float[count];
float[] r = new float[count]; //create color variables for balls
float[] g = new float[count];
float[] b = new float[count];
float[] inc = new float[count];


void setup() {
  //set size of canvas
  size(800, 600);

  int i = 0; //change variables for each ball
  while(i < count){
    x[i] = random(width); //spawn each ball inside the canvas
    y[i] = random(height);
    velX[i] = random(-5,5); //move each ball at a max rate of 5 in a random direction
    velY[i] = random(-5,5);
    diam[i] = random(5,100); //make each ball a radically different size
    r[i] = random(0,255); //randomize the color of each ball
    g[i] = random(0,255);
    b[i] = random(0,255);
    inc[i] = random(0,1);
    i++; //increase i by 1 during each cycle; have different instances of the above variables for each ball
  }
}

void draw() { 
  //draw background to cover previous frame
  background(0); //black background
  
  for(int i = 0; i < count; i++){ //initialize i as 0; draw 300 balls and change the variables each time

    stroke(r[i],g[i],b[i]); //color balls
    fill(r[i],g[i],b[i],40);
    //draw balls
    ellipse(x[i], y[i], diam[i], diam[i]);

    //add velocity to position
    x[i] += velX[i];
    y[i] += velY[i];

    //bounce ball if it hits walls
    if (x[i] + diam[i]/2 >= width) {
      velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
    } else if (x[i] - diam[i]/2 <= 0) {
      velX[i] = abs(velX[i]);     //if the ball hits the left wall, assign x velocity the positive version of itself
    }
    if (y[i] + diam[i]/2 >= height) { //if the ball hits the bottom wall, reverse its y velocity
      velY[i] = -abs(velY[i]);
    } else if (y[i] - diam[i]/2 <= 0) { //if the ball hits the top wall, reverse its y velocity
      velY[i] = abs(velY[i]); 
    }
    
    //define circle size increase/decrease
    if(diam[i] >= 100){
      inc[i] = 1;
    }else if(diam[i] <= 5){
      inc[i] = 0;
    }
    
  //fluctuate circle size
    if(inc[i] < 1){
      diam[i] = diam[i] + 1;
    }else{
      diam[i] = diam[i] - 1;
    }
  }
}