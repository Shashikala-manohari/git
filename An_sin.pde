// Global variables
float x, y, angle, amplitude, frequency, phase;

void setup() {
  size(800, 400);
  amplitude = 100;
  frequency = 1;
  phase = 0;
}

void draw() {
  background(255);
  translate(0, height / 2);  // Move origin to center

  for (x = 0; x <= width; x += 5) {
    y = sin(radians(x) * frequency + phase) * amplitude;
    stroke(0);
    strokeWeight(5);
    point(x, y);
  }

  phase += 0.05;  // Animate by changing phase
}
