Die bob;

int dieTotal = 0;

void setup()
{
  size(500, 550);
  textAlign(CENTER);
  noLoop();
}

void draw()
{
  for (int y = 0; y<=401; y = y + 100) {
    for (int x = 0; x<=451; x = x + 100) {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      if (bob.dieNum==1) {
        dieTotal = dieTotal+1;
      }
      if (bob.dieNum==2) {
        dieTotal = dieTotal+2;
      }
      if (bob.dieNum==3) {
        dieTotal = dieTotal+3;
      }
      if (bob.dieNum==4) {
        dieTotal = dieTotal+4;
      }
      if (bob.dieNum==5) {
        dieTotal = dieTotal+5;
      }
      if (bob.dieNum==6) {
        dieTotal = dieTotal+6;
      }
    }
  }
     System.out.println(dieTotal);
     noStroke();
     fill(200,200,200);
     rect(0,500,500,50);
     fill(0,0,0);
     textSize(20);
     text("Total = "+ dieTotal,250,525);
     dieTotal = 0;
}
  
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dieNum, mySize, myX, myY;

  Die(int x, int y)
  {
    myX = x;
    myY = y;
    mySize = 100;
  }
  void roll()
  {
    dieNum = (int)((Math.random()*6)+1);
    System.out.println(dieNum);
  }
  void show()
  {
    stroke(225, 225, 225);
    fill(225, 0, 0);
    rect(myX, myY, 100, 100);
    fill(225,225,225);
    if (dieNum == 1) {
      ellipse(myX+(25*2), myY+(25*2), 5*2, 5*2);
    } else if (dieNum == 2) {
      ellipse(myX+(35*2), myY+(25*2), 5*2, 5*2);
      ellipse(myX+(15*2), myY+(25*2), 5*2, 5*2);
    } else if (dieNum == 3) {
      ellipse(myX+(15*2), myY+(15*2), 5*2, 5*2);
      ellipse(myX+(25*2), myY+(25*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(35*2), 5*2, 5*2);
    } else if (dieNum == 4) {
      ellipse(myX+(15*2), myY+(15*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(15*2), 5*2, 5*2);
      ellipse(myX+(15*2), myY+(35*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(35*2), 5*2, 5*2);
    } else if (dieNum == 5) {
      ellipse(myX+(15*2), myY+(15*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(15*2), 5*2, 5*2);
      ellipse(myX+(15*2), myY+(35*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(35*2), 5*2, 5*2);
      ellipse(myX+(25*2), myY+(25*2), 5*2, 5*2);
    } else {
      ellipse(myX+(15*2), myY+(10*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(10*2), 5*2, 5*2);
      ellipse(myX+(15*2), myY+(25*2), 5*2, 5*2);
      ellipse(myX+(15*2), myY+(40*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(25*2), 5*2, 5*2);
      ellipse(myX+(35*2), myY+(40*2), 5*2, 5*2);
    }
  }
}
//end
