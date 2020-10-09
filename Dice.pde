   void setup()
  {
  background (0,0,0);
    size(600,700);
      noLoop();
  }
  void draw()
{
   background();
  int sum= 0;
  for(int y = 0; y < 600; y = y + 205)
  {
    for(int x = 0; x < 600; x= x + 205)
    {
     Die bob = new Die(x,y);
     bob.show();
     if (bob.sides > 0)
     {
       sum = sum + bob.sides;
     } else {
       sum = sum *0;
     }
    }
  }
   fill(173,250,230);
   textSize(32);
  text("Sum: " + sum, 250, 650); 
}
  void mousePressed()
  {
      redraw();
  }
  class Die
  { 
      int sides, myX, myY;      
      Die(int x, int y) 
      {
          myX = x;
          myY = y;
          sides = (int)(Math.random()* 6) +1;
      }
      void roll()
      {
                     sides = (int)(Math.random()* 6) +1;
      }
      void show()
      {
        noStroke();
        fill(173,250,230);
        rect(myX,myY,200, 200);
        fill(0,0,0);
        if (sides == 1) {
        ellipse (myX+100, myY+100, 25, 25);
        } else if (sides ==2) {
          ellipse (myX+150, myY+150, 25, 25);
          ellipse (myX+50, myY+50, 25,25);
        } else if (sides ==3) {
           ellipse (myX+100, myY+100, 25,25);
            ellipse (myX+150, myY+150, 25,25);
          ellipse (myX+50, myY+50, 25,25);
        } else if ( sides ==4) {
           ellipse (myX+150, myY+150, 25, 25);
          ellipse (myX+50, myY+50, 25,25);
           ellipse (myX+50, myY+150, 25,25);
            ellipse (myX+150, myY+50, 25,25);
        } else if (sides ==5) {
            ellipse (myX+150, myY+150, 25,25);
          ellipse (myX+50, myY+50, 25,25);
           ellipse (myX+50, myY+150, 25,25);
            ellipse (myX+150, myY+50, 25,25);
             ellipse (myX+100, myY+100, 25,25);
        } else if (sides ==6) {
           ellipse (myX+150, myY+150, 25,25);
          ellipse (myX+50, myY+50, 25,25);
           ellipse (myX+50, myY+150, 25,25);
            ellipse (myX+150, myY+50, 25,25);
             ellipse (myX+50, myY+100, 25,25);
              ellipse (myX+150, myY+100, 25,25);
        }
      }
  }
