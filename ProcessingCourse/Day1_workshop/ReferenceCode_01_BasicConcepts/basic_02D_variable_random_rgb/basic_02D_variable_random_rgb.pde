/* Zhang Liqun@SJTU IDM
*/

// declare variables "x", "y", "speed", "col" and "rad"
float x,y,speed,rad,col;
int rgbcol;

void setup() {
  size(400,400);  
  smooth();
  
  x=0;
  y=random(height);  
  speed=random(5,10);
  rad=random(20,50);
  col=random(50,255);
  rgbcol=color(random(255),random(255),random(255),random(255));
}

void draw() {
  //turn off background() to draw trails
  //background(200);

  fill(rgbcol);
  ellipse(x,y, rad,rad);

  // increase x for each frame
  x=x+speed;  
  
  // if x goes off screen, set it back to zero
  // and choose new random parameters
  if(x>width) {
    x=0;
    y=random(height);  
    speed=random(5,10);
    rad=random(10,30);
    rgbcol=color(random(255),random(255),random(255),random(255));
    rgbcol=color(random(255),random(255),random(255));
  }
}