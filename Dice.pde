Die d1;

void setup() {
	noLoop();
  size(400,400);
}

void draw() {
	background (255); 
  d1 = new Die (width/2, height/2);
  d1.show();
}

void mousePressed() {
	redraw();
}

class Die {
	int roleNum, x, y, dieW;
	
	Die(int x, int y) {
  dieW = 100;

}

	void roll() {
		//your code here
	}

	void show() {
	roleNum = 1;
  stroke(0);  
  fill(255);
  rect(150, 150, 100, 100, 5);
  fill(0);
  if (roleNum == 1){
    ellipse(width/2, height/2, 20, 20);
  } else if  (roleNum == 2) {
    
  }
}
}
