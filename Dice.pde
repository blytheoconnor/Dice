Die d1;

void setup() {
	noLoop();
  size(400,350);
}

void draw() {
	background (255); 
  d1 = new Die();
  d1.roll();
}

void mousePressed() {
	redraw();
}

class Die {
	int rollNum, dieS, dotW, dieCount;

	Die() {
  dieS = (int)(Math.random() * 91) + 11;
  dotW = dieS/5;
  rollNum = 1;
  dieCount = 0;
}

	void roll() {
    rollNum = (int)(Math.random() * 6) + 1;
    show();
	}

	void show() {
  for (int y = 60; y <= height - (dieS + dieS/4); y+=dieS + (dieS/4)) {
    for(int x = dieS/4; x <= width - (dieS + dieS/4); x+=dieS + (dieS/4)) {
      stroke(0);  
      fill(255);
      rect(x, y, dieS, dieS, dieS/10);
      rollNum = (int)(Math.random() * 7) + 1;
      dieCount += rollNum;
      fill((int)(Math.random()* 257) + 1, (int)(Math.random()* 257) + 1, (int)(Math.random()* 257) + 1);
      noStroke();
      if (rollNum % 2 == 1){
         ellipse(x + dieS/2, y + dieS/2, dotW, dotW);
      } 
      if (rollNum == 2) {
         ellipse(x + dieS/5, y + dieS/5, dotW, dotW);
         ellipse(x + dieS - (dieS/5), y + dieS - (dieS/5), dotW, dotW);
      } else if (rollNum == 3) {
        ellipse(x + dieS/5, y + dieS/5, dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS - (dieS/5), dotW, dotW);
      } else if (rollNum == 4) {
        ellipse(x + dieS/5, y + dieS/5, dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS - (dieS/5), dotW, dotW);
        ellipse(x + dieS/5, y + dieS - (dieS/5), dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS/5, dotW, dotW);
      }  else if (rollNum == 5) {
        ellipse(x + dieS/5, y + dieS/5, dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS - (dieS/5), dotW, dotW);
        ellipse(x + dieS/5, y + dieS - (dieS/5), dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS/5, dotW, dotW);
      }  else if (rollNum == 6) {
        ellipse(x + dieS/5, y + dieS/5, dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS - (dieS/5), dotW, dotW);
        ellipse(x + dieS/5, y + dieS - (dieS/5), dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS/5, dotW, dotW);
        ellipse(x + dieS/5, y + dieS/2, dotW, dotW);
        ellipse(x + dieS - (dieS/5), y + dieS/2, dotW, dotW);
      } 
    }
  }
      title(width/4 + 20, 40);
 }
 
 void title(int a, int b) {
   fill(0);
   PFont font;
   font = createFont("Georgia", 20);
   textFont(font);
   text(("Sum of roll: " + dieCount), a, b);
 }
 
}
