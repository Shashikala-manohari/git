void setup() {
  size(800, 600);  
  background(255); 
  stroke(0, 0, 220); 
  strokeWeight(2);
  
  
  beginShape();     
  vertex(400, 100);
  vertex(310, 130);
  vertex(245, 210);
  vertex(290, 420);
  vertex(350, 500);
  vertex(450, 500);
  vertex(510, 420);
  vertex(555, 210);
  vertex(490, 130);
  endShape(CLOSE);
  
  
  beginShape();    
  vertex(555, 210);
  vertex(610, 180);
  vertex(630, 250);
  vertex(570, 330);
  vertex(527, 340);
  endShape(CLOSE);

  
  beginShape();    
  vertex(245, 210);
  vertex(190, 180);
  vertex(170, 250);
  vertex(230, 330);
  vertex(273, 340);
  endShape(CLOSE);

  
  line(200, 220, 235, 300); 
  line(600, 220, 565, 300);

  noFill();
  arc(330, 260, 65, 60, 0.75*QUARTER_PI+PI, 0.25*QUARTER_PI+PI+HALF_PI+QUARTER_PI );
  arc(470, 260, 65, 60, 0.75*QUARTER_PI+PI, 0.25*QUARTER_PI+PI+HALF_PI+QUARTER_PI );

strokeWeight(8);
  point(400, 100);
  point(310, 130);
  point(245, 210);
  point(290, 420);
  point(350, 500);
  point(450, 500);
  point(510, 420);
  point(555, 210);
  point(490, 130);
  point(555, 210);
  point(610, 180);
  point(630, 250);
  point(570, 330);
  point(527, 340);
  point(190, 180);
  point(170, 250);
  point(230, 330);
  point(273, 340);
  point(200, 220);
  point(235, 300); 
  point(600, 220);
  point(565, 300);



  fill(0, 0, 220);
  strokeWeight(0);
  triangle(400, 100, 310, 130, 245, 210);
  triangle(400, 100, 490, 130, 555, 210);

  circle(330, 260, 22);
  circle(470, 260, 22);

  triangle(400, 290, 380, 360, 420, 360);

  arc(400, 420, 80, 80, 0, PI);
}
