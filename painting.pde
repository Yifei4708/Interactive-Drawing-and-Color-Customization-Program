int R = 0;
int G = 0;
int B = 0;
int a = 15;
int n = 1;
int b = 50;
Box red;
Box green;
Box blue;
void setup(){
  size(1200,800);
  background(255);
  frameRate(a);
  red = new Box(100, 100);
  green = new Box(300, 100);
  blue = new Box(500, 100);
}

void draw(){
  stroke(0);
  fill(255,0,0);
  rect(0,0,100,100);
  fill(255,255,0);
  rect(100,0,100,100);
  fill(0,255,0);
  rect(200,0,100,100);
  fill(102,255,255);
  rect(300,0,100,100);
  fill(0,0,255);
  rect(400,0,100,100);
  fill(0,0,0);
  rect(500,0,100,100);
  fill(255,255,255);
  rect(600,0,100,100);
  fill(255);
  rect(700,0,100,100);
  fill(0);
  textSize(30);
  text("Clear",710,65);
  fill(255);
  rect(800,0,100,100);
  fill(0);
  ellipse(850,50,50,50);
  fill(255);
  rect(900,0,100,100);
  fill(0);
  rect(925,25,50,50);
  fill(255);
  rect(1000,0,100,100);
  fill(0);
  textSize(40);
  text("+",1035, 64);
  fill(255);
  rect(1100,0,100,100);
  fill(0);
  textSize(40);
  text("-",1135, 64);
  fill(255);
  rect(0,100,1200,50);
  
  fill(255);
  rect(0,100,50,50);
  fill(0);
  textSize(30);
  text("+",10,135);
  fill(255);
  rect(50,100,50,50);
  fill(0);
  textSize(30);
  text("-",60,135);
  fill(255);
  rect(200,100,50,50);
  fill(0);
  textSize(30);
  text("+",210,135);
  fill(255);
  rect(250,100,50,50);
  fill(0);
  textSize(30);
  text("-",260,135);
  fill(255);
  rect(400,100,50,50);
  fill(0);
  textSize(30);
  text("+",410,135);
  fill(255);
  rect(450,100,50,50);
  fill(0);
  textSize(30);
  text("-",460,135);
  fill(255);
  rect(1000,100,100,50);
  fill(0);
  textSize(20);
  text("Smooth",1020,135);
  fill(255);
  rect(1100,100,50,50);
  fill(0);
  textSize(30);
  text("+",1110,135);
  fill(255);
  rect(1150,100,50,50);
  fill(0);
  textSize(30);
  text("-",1160,135);
  
  if ( mousePressed && mouseY > 150 && n == 1){
      noStroke();
      fill(R,G,B);
      ellipse(mouseX, mouseY,b,b);
  }
  if ( mousePressed && mouseY > 150 && n == 2){
    noStroke();
    fill(R,G,B);
    rect(mouseX, mouseY,b,b);
  }
  red.draw();
  green.draw();
  blue.draw();

}

void mouseClicked(){
  if (mouseX > 0 && mouseX < 100 && mouseY < 100){
    R = 255;
    G = 0;
    B = 0;
    println(R,G,B);
  }
  if (mouseX > 100 && mouseX < 200 && mouseY < 100){
    R = 255;
    G = 255;
    B = 0;
    println(R,G,B);
  }
  if (mouseX > 200 && mouseX < 300 && mouseY < 100){
    R = 0;
    G = 255;
    B = 0;
    println(R,G,B);
  }
  if (mouseX > 300 && mouseX < 400 && mouseY < 100){
    R = 102;
    G = 255;
    B = 255;
    println(R,G,B);
  }
  if (mouseX > 400 && mouseX < 500 && mouseY < 100 ){
    R = 0;
    G = 0;
    B = 255;
    println(R,G,B);
  }
  if (mouseX > 500 && mouseX < 600 && mouseY < 100){
    R = 0;
    G = 0;
    B = 0;
    println(R,G,B);
  }
  if (mouseX > 600 && mouseX < 700 && mouseY < 100){
    R = 255;
    G = 255;
    B = 255;
    println(R,G,B);
  }
  if (mouseX > 700 && mouseX < 800 && mouseY < 100){
    fill(255);
    rect(0,150,1200,800);
  }
  
  if (mouseX > 800 && mouseX <900 && mouseY < 100){
     n = 1;
  }
  if (mouseX > 900 && mouseX <1000 && mouseY < 100){
     n = 2;
  }
  if (mouseX > 1000 && mouseX < 1100 && mouseY < 100){
    b += 5 ;
  }
  if (mouseX > 1100 && mouseX < 1200 && mouseY < 100){
    b -= 5 ;
  }
  if (mouseX > 1100 && mouseX < 1150 && mouseY < 150 && mouseY > 100){
    a += 30 ;
  }
  if (mouseX > 1150 && mouseX < 1200 && mouseY < 150 && mouseY > 100){
    a -= 30 ;
  }
  if (mouseX > 0 && mouseX < 50 && mouseY < 150 && mouseY > 100){
    R += 10 ;
  }
  if (mouseX > 50 && mouseX < 100 && mouseY < 150 && mouseY > 100){
    R -= 10;
  }
  if (mouseX > 200 && mouseX < 250 && mouseY < 150 && mouseY > 100){
    G += 10 ;
  }
  if (mouseX > 250 && mouseX < 300 && mouseY < 150 && mouseY > 100){
    G -= 10 ;
  }
  if (mouseX > 400 && mouseX < 450 && mouseY < 150 && mouseY > 100){
    B += 10 ;
  }
  if (mouseX > 450 && mouseX < 500 && mouseY < 150 && mouseY > 100){
    B -= 10 ;
  }
  red.mouseClicked();
  blue.mouseClicked();
  green.mouseClicked();
  

}
void keyPressed(){
  red.keyPressed();
  green.keyPressed();
  blue.keyPressed();
  
  if (red.d == 1){
    R = red.t;
    println(R,G,B);
  }
  if (green.d == 1){
    G = green.t;
    println(R,G,B);
  }
  if (blue.d == 1){
    B = blue.t;
    println(R,G,B);
  }
}
