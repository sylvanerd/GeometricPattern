float space = 100;
float a = 0; 
float b = 0; 


void setup () {
  size(600, 600);
  colorMode(HSB);
  //delay(5000);
}


void draw() {
  background (0);
 
  a = a+0.5;
  b = b+0.3;
  
  if (b>200) {
    b = 0;
    a = 0;
  }
  
  println (a, b);
  for (int x = 0; x<width; x +=space ) {
    for (int y = 0; y<height; y +=space ) {
      noFill();
      stroke(255);
      strokeWeight(2.5);
      colorMode(HSB);
      stroke(b, 255, 255);
      //to create square;
      rectMode(CENTER);
      rect(x+space/2, y+space/2, space+a, space+a);
      //to create circles inside;
      ellipseMode(CENTER);
      stroke(b, 255, 255);
      ellipse(x+space/2, y+space/2, space+a, space+a);
      //to create circles outside; 
      colorMode(RGB);
      stroke(255, 200, b, b); 
      ellipse(x+space, y+space, (space+a)/2, (space+a)/2);
    }
  }
}
