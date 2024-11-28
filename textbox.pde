public class Box {
  private String text = "";
  private int x;
  private int y;
  private int t;
  private int d;
  private boolean selected;

  public Box(int x, int y) {
    this.x = x;
    this.y = y;
    this.t = 0;
    this.d = 0;
    selected = false;
  }

  public void mouseClicked() {
    if (mouseX > this.x && mouseX < this.x + 100 && mouseY > this.y && mouseY < this.y + 50) {
      this.selected = true;
    } else {
      this.selected = false;
    }
  }
  public void keyPressed() {
    if (selected){
      if (keyCode == BACKSPACE && text.length()>0) {
        text = text.substring(0, text.length()-1);
      } else {
        if (key >= '0' && key < '9'){
          text += key;
        }
      }
      if (keyCode == ENTER ){
        this.d = 1;
        this.t = int(text);
        this.selected = false;
      }
    }
  }

  public void draw() {
    if (selected) {
      stroke(0, 255, 0);
    } else {
      stroke(255, 0, 0);
    }
    fill(220,255,255);
    rect(this.x, this.y, 100, 50);
    fill(0);
    text(text, this.x, this.y+50);
  }
}
