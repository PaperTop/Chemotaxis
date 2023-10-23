Ions [] electrons = new Ions[6];
Ions [] lithium = new Ions[3];
Boolean charge = false;
boolean power = true;
int stage = 0;

void setup()
{
  textAlign(CENTER);
  size(800, 800);
  for (int i = 0; i < electrons.length; i++) {
    electrons[i] = new Ions(false);
  }
  for (int i = 0; i < lithium.length; i++) {
    lithium[i] = new Ions(true);
  }
}
void draw()
{
  background(200, 200, 200);
  //System.out.println(mouseX + " " + mouseY);
  car();
  battery();
  wires();
  accelerator();
  charge();
  for (int i = 0; i < electrons.length; i++) {
    electrons[i].move();
    electrons[i].show();
  }
  for (int i = 0; i < lithium.length; i++) {
    lithium[i].move();
    lithium[i].show();
  }
}
void car()
{
  rect(250, 500, 300, 200);
  rect(150, 600, 500, 100);
  ellipse(300, 700, 100, 100);
  ellipse(500, 700, 100, 100);
}
void battery() {
  rect(225, 150, 350, 250);
  strokeWeight(10);
  stroke(200, 200, 200);
  line(400, 155, 400, 395);
  stroke(0);
  strokeWeight(5);
}
void wires() {
  strokeWeight(10);
  //left
  line(225, 275, 75, 275);
  line(75, 275, 75, 650);
  line(75, 650, 150, 650);
  //right
  line(575, 275, 725, 275);
  line(725, 275, 725, 650);
  line(725, 650, 650, 650);
  strokeWeight(5);
}
void accelerator() {

  if (mouseX > 225 && mouseX < 375 && mouseY > 25 && mouseY < 75 && mousePressed == true) {
    fill(200, 200, 200);
    power = false;
  } else if (mouseX > 225 && mouseX < 375 && mouseY > 25 && mouseY < 75) {
    fill(200, 200, 200);
  }
  rect(225, 25, 150, 50);
  fill(0);
  text("Accelerate", 300, 55);
  fill(255);
}
void charge() {
    if (mouseX > 425 && mouseX < 575 && mouseY > 25 && mouseY < 75 && mousePressed == true) {
    fill(200, 200, 200);
    power = true;
  } else if (mouseX > 425 && mouseX < 575 && mouseY > 25 && mouseY < 75) {
    fill(200, 200, 200);
  }
  rect(425, 25, 150, 50);
  fill(0);
  text("Charge", 500, 55);
  fill(255);
  }
class Ions
{
  int myX, myY;
  boolean size;
  Ions (boolean type) {
    myX = (int)(Math.random()*150) + 235;
    myY = (int)(Math.random()*230) + 160;
    size = type;
  }
  void move() {
    if (power && stage == 0) {
      if (myX >= 400) {myX -= 10;}
      if (myX <= 225) {myX += 10;}
      if (myY <= 150) {myY += 10;}
      if (myY >= 400) {myY -= 10;}
    } else if(stage == 0){
      if (myX <= 400) {myX += 10;}
      if (myX >= 575) {myX -= 10;}
      if (myY <= 150) {myY += 10;}
      if (myY >= 400) {myY -= 10;}
    }
    myX += ((int)(Math.random()*3)) - 1;
    myY += ((int)(Math.random()*3)) - 1;
    
  }
  void show() {
    if (size == true) {
      strokeWeight(2);
      ellipse(myX, myY, 30, 30);
      strokeWeight(5);
    } else {
      strokeWeight(2);
      ellipse(myX, myY, 10, 10);
      strokeWeight(5);
    }
  }
  void use() {
    //if(stage == 1){
      
    //}
  }
}



