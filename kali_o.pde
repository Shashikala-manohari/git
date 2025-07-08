// ==== Global Variables ====
float angle = 0;
float speed;
float radius;

color[] palette1 = {#FF6F61, #6B5B95, #88B04B};
color[] palette2 = {#F7CAC9, #92A8D1, #955251};
color[] currentPalette;
boolean usePalette1 = true;

final int NUM_SHAPES = 12;

// ==== SETUP ====
void setup() {
  size(800, 600);                    // ✅ Item 1: size(800, 600)
  frameRate(60);                          // ✅ Item 7: 60 FPS
  currentPalette = palette1;
}

// ==== DRAW ====
void draw() {
  background(0);
  translate(width / 2, height / 2);

  updateOrbit();                          // ✅ Item 5: update angle, radius, speed

  float step = TWO_PI / NUM_SHAPES;
  for (int i = 0; i < NUM_SHAPES; i++) {  // ✅ Item 3: for-loop drawing symmetrical shapes
    float x = cos(angle + i * step) * radius;
    float y = sin(angle + i * step) * radius;
    drawPetal(x, y, i);                   // ✅ Item 2: user-defined function
  }

  angle += speed;
}

// ==== FUNCTION: Update speed & radius from mouse ====
void updateOrbit() {
  radius = map(mouseX, 0, width, 50, 250);
  speed = map(mouseY, 0, height, 0.01, 0.1);
}

// ==== FUNCTION: Draw a single petal ====
void drawPetal(float x, float y, int index) {
  fill(currentPalette[index % currentPalette.length]);
  noStroke();
  ellipse(x, y, 50, 50);
}

// ==== KEY CONTROLS ====
void keyPressed() {
  if (key == 'C' || key == 'c') {         // ✅ Item 4: toggle palettes with C
    usePalette1 = !usePalette1;
    currentPalette = usePalette1 ? palette1 : palette2;
  }
  if (key == 'S' || key == 's') {         // ✅ Item 6: save PNG with timestamp
    saveFrame("kaleido" + timestamp() + ".png");
  }
}

// ==== Timestamp Function for Filenames ====
String timestamp() {
  return "_" + year() + nf(month(), 2) + nf(day(), 2) + "-" +
         nf(hour(), 2) + nf(minute(), 2) + nf(second(), 2);
}
