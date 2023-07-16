void setup(){
  size(250,250,P3D);
  fill(203);
  strokeWeight(2);
}

void draw(){
  directionalLight(0, 255, 255, 0, -255, -255);
  background(0);
  camera(mouseX*2, mouseY*2, 300.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
  noStroke();
  sphere(50);
  stroke(255);
  line(-100,0,0,100,0,0);
  line(0,-100,0,0,100,0);
  line(0,0,-100,0,0,100);
}
