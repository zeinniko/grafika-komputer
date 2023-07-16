//Nama  : Niko
//NPM   : 011200031
void setup() {  
  size(750, 750);
}
void draw() {  background(220);
  translate(width/2, height/2); 
  rotate(radians(frameCount)); 
  fill(255,0,0);    
  rectMode(CENTER);
  triangle(-100, 0, -50, -100, 0, 0);
  fill(255,255,82);
  rect(50, 50,50, 50);
  fill(35,255,255);
  ellipse(100,100, 50, 50);
}
