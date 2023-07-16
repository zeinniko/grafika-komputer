float sunRadius = 50;
float mercuryRadius = 10;
float venusRadius = 15;
float earthRadius = 20;
float marsRadius = 18;
float jupiterRadius = 40;
float saturnRadius = 35;
float uranusRadius = 30;
float neptuneRadius = 25;

float mercuryJarak = 100;
float venusJarak = 150;
float earthJarak = 200;
float marsJarak = 250;
float jupiterJarak = 300;
float saturnJarak = 350;
float uranusJarak = 400;
float neptuneJarak = 450;

float angle = 0;
float angleIncrement = 0.5;

void setup() {
  size(500, 500, P3D);
}

void draw() {
  background(100);
  
  lights();
  camera(width/2, height/2, 800, width/2, height/2, 0, 0, 1, 0);
  
  translate(width/3, height/1, 0);
  
  fill(100, 200, 100);
  sphere(sunRadius);
  
  drawOrbitingPlanet(mercuryJarak, mercuryRadius, color(170), 0.5);
  drawOrbitingPlanet(venusJarak, venusRadius, color(255, 255, 0), 0.3);
  drawOrbitingPlanet(earthJarak, earthRadius, color(255, 0, 255), 0.2);
  drawOrbitingPlanet(marsJarak, marsRadius, color(255, 0, 0), 0.15);
  drawOrbitingPlanet(jupiterJarak, jupiterRadius, color(0, 0, 255), 0.1);
  drawOrbitingPlanet(saturnJarak, saturnRadius, color(0, 255, 0), 0.08);
  drawOrbitingPlanet(uranusJarak, uranusRadius, color(0, 255, 200), 0.05);
  drawOrbitingPlanet(neptuneJarak, neptuneRadius, color(0, 255, 255), 0.04);
  
  angle += angleIncrement;
}

void drawOrbitingPlanet(float Jarak, float radius, color c, float speedMultiplier) {
  pushMatrix();
  
  rotateY(angle * speedMultiplier);
  
  translate(Jarak, 0, 0);
  
  fill(c);
  sphere(radius);
  
  popMatrix();
}
