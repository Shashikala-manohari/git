import controlP5.*;
ArrayList<Particle> particles;
ControlP5 cp5;

float gravity = 0.1;
float particleSize = 5;
float launchAngle = 90;

PFont font;

void setup() {
  size(900, 600);
  frameRate(60);
  particles = new ArrayList<Particle>();
  
  cp5 = new ControlP5(this);
  cp5.addSlider("gravity").setRange(0, 1).setValue(0.1).setPosition(20, 20).setSize(150, 20);
  cp5.addSlider("particleSize").setRange(2, 12).setValue(5).setPosition(20, 50).setSize(150, 20);
  cp5.addSlider("launchAngle").setRange(60, 120).setValue(90).setPosition(20, 80).setSize(150, 20);
  cp5.addButton("resetParticles").setPosition(20, 110).setSize(150, 25);
  
  font = createFont("Arial", 12);
  textFont(font);
}

void draw() {
  background(0);
  
  // Generate particles
  for (int i = 0; i < 5; i++) {
    float angleRad = radians(launchAngle + random(-5, 5));
    PVector vel = new PVector(cos(angleRad), -sin(angleRad)).mult(random(2, 5));
    particles.add(new Particle(new PVector(width/2, height - 20), vel));
  }

  // Update and display particles
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if (p.life <= 0) {
      particles.remove(i);
    }
  }

  fill(255);
  text("Press 'P' to save PNG", 20, height - 20);
}

void resetParticles() {
  particles.clear();
}

void keyPressed() {
  if (key == 'P' || key == 'p') {
    saveFrame("fountain" + timestamp() + ".png");
  }
}

String timestamp() {
  return "_" + year() + nf(month(),2) + nf(day(),2) + "-" +  
         nf(hour(),2) + nf(minute(),2) + nf(second(),2);
}

// === Particle class ===
class Particle {
  PVector pos, vel;
  float life;

  Particle(PVector p, PVector v) {
    pos = p.copy();
    vel = v.copy();
    life = 255;
  }

  void update() {
    vel.y += gravity;
    pos.add(vel);
    life -= 2;
  }

  void display() {
    noStroke();
    fill(255, life);
    ellipse(pos.x, pos.y, particleSize, particleSize);
  }
}
