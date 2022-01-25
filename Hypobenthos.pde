// y = 5x;
//x= 5t;
//y = 3t*3;
float t;
float b = random (100,255);

static final int NUM_LINES = 20;

void setup() {
  size(800, 800);
}

void draw() {
  background (0);
  float b = 100;
  stroke(255, 255, 148 );
  strokeWeight(5);
  translate(width/2, height/2);
  for (int i =0; i<NUM_LINES; i++) {
    line(x1(t+i), y1(t+i), x2(t+i), y2(t+i));
    t +=0.003;
  }

  stroke(232, 246, 239);
  strokeWeight(5);
  translate(0, 0);
  for (int i =0; i<NUM_LINES; i++) {
    line(x3(t+i), y3(t+i), x4(t+i), y4(t+i));
    t +=0.003;
  }
  
  stroke(184, 223, 216);
  strokeWeight(5);
  translate(0, 0);
  for (int i =0; i<NUM_LINES; i++) {
    line(x5(t+i), y5(t+i), x6(t+i), y6(t+i));
    t +=0.003;
  }
  
  
  stroke(76, 76, 109);
  strokeWeight(5);
  translate(0, 0);
  for (int i =0; i<NUM_LINES; i++) {
    line(x7(t+i), y7(t+i), x8(t+i), y8(t+i));
    t +=0.003;
  }
  
}

float x1(float t) {
  return sin(t/10)*90+sin(t/10)*10;
}
float y1(float t ) {
  return cos(t/10)*100+cos(t/10)*30;
}
float x2(float t) {
  return sin(t/10)*200+sin(t)*2*5;
}
float y2(float t ) {
  return cos(t/20)*200+cos(t/10)*150;
}

//////////

float x3(float t) {
  return cos(t/10)*100+cos(t/10)*30;
}
float y3(float t ) {
  return sin(t/10)*90+sin(t/10)*10;
}
float x4(float t) {
  return cos(t/20)*200+cos(t/10)*150;
}
float y4(float t ) {
  return sin(t/10)*200+sin(t)*2*5;
}

/////////

float x5(float t) {
  return cos(t/20)*200;
}
float y5(float t ) {
  return sin(t/10)*200;
}
float x6(float t) {
  return cos(t/10)*100;
}
float y6(float t ) {
  return sin(t/10)*90;
}

////////
float x7(float t) {
  return sin(t/10)*90;
}
float y7(float t ) {
  return cos(t/10)*100;
}
float x8(float t) {
  return sin(t/10)*200;
}
float y8(float t ) {
  return cos(t/20)*200;
}
