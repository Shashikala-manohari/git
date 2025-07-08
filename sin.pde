// Global variables
float x, y, angle, amplitude, frequency, phase;

void setup() {
  size(800, 400);          // Canvas size
  background(255);         // White background

  // Initialize variables
  angle = 0;
  amplitude = 100;
  frequency = 1;
  phase = 0;

  // Move origin to middle-left
  pushMatrix();
  translate(0, height / 2);

  // Draw sine wave
  for (x = 0; x <= width; x += 5) {
    y = sin(radians(x) * frequency + phase) * amplitude;
    stroke(0);
    strokeWeight(5);
    point(x, y);
  }

  popMatrix();  // Reset transform
}
