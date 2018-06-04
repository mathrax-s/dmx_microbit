float mX;
float mY;
float mZ;

float aveX;
float aveY;
float aveZ;


void setup() {
  size(600, 600);
  serialOpen();
  noStroke();
}

void draw() {
  background(0);

  mX = map(x, 0, 255, 0, 255); 
  mY = map(y, 0, 255, 0, 255); 
  mZ = map(z, 0, 255, 0, 255);

  aveX = aveX * (9.0/10.0) + mX/10.0;
  aveY = aveY * (9.0/10.0) + mY/10.0;
  aveZ = aveZ * (9.0/10.0) + mZ/10.0;

  fill(aveX, aveY, aveZ);
  ellipse(width/2, height/2, 500, 500);
}