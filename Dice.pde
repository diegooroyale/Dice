Dice bob;
int sum = 0;
void setup()
  {
    background(0,0,0);
    size(1000, 1000);
    noLoop();
    textAlign(CENTER);
    textSize(15);
      
  }
  void draw()
  {
   for(int yPos = 10; yPos <900; yPos+=60){
     for(int xPos = 10; xPos < 850; xPos+=60){ 
       bob = new Dice(xPos,yPos);
       bob.show();
       bob.roll((int)(Math.random()*6)+1);
     }
   }  
      System.out.println(sum);
      fill(0,0,0);
      rect(845,80,1000,115);
      fill(255,255,255);
      text("Sum of all dice: " + sum, 920, 100);
      
      
     
  }
  void mousePressed()
  {
      redraw();
      sum = 0;
  }
  class Dice //models one single dice cube
  {
      int mySize, myX, myY;
      
     
      Dice(int x, int y) //constructor
      {
         mySize = 50;
         myX = x;
         myY = y;
      }
      void roll(int x)
      {
        fill(0,0, 0);
         if(x == 1){
            ellipse(myX+25, myY+25, mySize/4, mySize/4);
            sum += 1;
        }else if(x == 2){
            ellipse(myX+10, myY+10, mySize/4, mySize/4);
            ellipse(myX+40, myY+40, mySize/4, mySize/4);
            sum += 2;
        }else if(x == 3){
            ellipse(myX+10, myY+10, mySize/4, mySize/4);
            ellipse(myX+25, myY+25, mySize/4, mySize/4);
            ellipse(myX+40, myY+40, mySize/4, mySize/4);
            sum += 3;
        }else if(x == 4){
            ellipse(myX+10, myY+10, mySize/4, mySize/4);
            ellipse(myX+40, myY+10, mySize/4, mySize/4);
            ellipse(myX+10, myY+40, mySize/4, mySize/4);
            ellipse(myX+40, myY+40, mySize/4, mySize/4);
            sum += 5;
        }else if(x == 5){
            ellipse(myX+10, myY+10, mySize/4, mySize/4);
            ellipse(myX+40, myY+10, mySize/4, mySize/4);
            ellipse(myX+10, myY+40, mySize/4, mySize/4);
            ellipse(myX+40, myY+40, mySize/4, mySize/4);
            ellipse(myX+25, myY+25, mySize/4, mySize/4);
            sum += 5;
        }else if(x == 6){
            ellipse(myX+10, myY+10, mySize/4, mySize/4);
            ellipse(myX+40, myY+10, mySize/4, mySize/4);
            ellipse(myX+10, myY+25, mySize/4, mySize/4);
            ellipse(myX+40, myY+25, mySize/4, mySize/4);
            ellipse(myX+10, myY+40, mySize/4, mySize/4);
            ellipse(myX+40, myY+40, mySize/4, mySize/4);
            sum += 6;
        }
      }
      void show()
      {
         
         fill(255, 255, 255);
         rect(myX, myY, mySize, mySize,10);
         
         
         
      }
  }
  





