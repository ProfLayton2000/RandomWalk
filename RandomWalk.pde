void setup(){
  size(1440,800);
  background(0);
  //fill(20, 160, 133);
  //ellipse(0,0,100,100);
}

int old_x = 0;
int old_y = 0;

int new_x = 0;
int new_y = 0;

int dist = 50;
int size = 5;
int weight = 2;

float t = 0;
float freq = 0.01;
void draw(){
  translate(width/2,height/2);
  //background(0);
  float r = random(0,4);
  r = int(r); //ranges from 0..3
  
  if (r == 0){
    new_x = old_x + dist;
  } else if (r == 1){
    new_x = old_x - dist;
  } else if (r == 2){
    new_y = old_y + dist;
  } else if (r == 3){
    new_y = old_y - dist;
  }
  
  fill(0,200+50*sin(t),200+50*cos(t));
  stroke(0,200+50*sin(t),200+50*cos(t));
  
  //float col = dist(0,0,new_x,new_y);
  //float max = dist(0,0,width/2,height/2);
  //map(col,0,max,0,255);
  //colorMode(HSB);
  //fill(col,255,255);
  //stroke(col,255,255);
  
  
  strokeWeight(weight);
  ellipse(new_x,new_y,size,size);
  line(old_x,old_y,new_x,new_y);
  
  if (new_x > width/2){
    new_x = new_x - width;
  } else if (new_x <= -width/2){
    new_x = new_x + width;
  }
  
  if (new_y > height/2){
    new_y = new_y - height;
  } else if (new_y <= -height/2){
    new_y = new_y + height;
  }
  
  old_x = new_x;
  old_y = new_y;
  t = t + freq;
}