void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  background(192,192,192);
  int sum = 0;
  for(int y = 25; y < 400; y = y + 60)
  {
   for(int x = 25; x < 500; x = x + 60) 
    { 
     Die bob = new Die(x,y);
     bob.roll();
     sum = sum + bob.num; 
     bob.show(); 
     } 
    }  
   text("Total: " + sum,215,460); 
   text("Average: " + (float)sum/56,290,460); 
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int myX, myY, num; 
    
  Die(int x, int y) 
  {
   myX = x; 
   myY = y;
   num = 0;
  }
  void roll()
  {
    num = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX,myY,30,30,5); 
    fill(0);
    if(num == 1){
      ellipse(myX + 15,myY + 15,5,5);
    }else if(num == 2){
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 20, myY + 20, 5, 5);
    }else if(num == 3){
      ellipse(myX + 7.5, myY + 7.5, 5, 5);
      ellipse(myX + 15, myY +15, 5, 5);
      ellipse(myX + 22.5, myY + 22.5, 5, 5);
    }else if(num == 4){
      ellipse(myX + 7.5, myY + 7.5, 5, 5);
      ellipse(myX + 22.5, myY + 7.5, 5, 5);
      ellipse(myX + 7.5, myY + 22.5, 5, 5);
      ellipse(myX + 22.5, myY + 22.5, 5, 5);
    }else if(num == 5){
      ellipse(myX + 7.5, myY + 7.5, 5, 5);
      ellipse(myX + 22.5, myY + 7.5, 5, 5);
      ellipse(myX + 7.5, myY + 22.5, 5, 5);
      ellipse(myX + 22.5, myY + 22.5, 5, 5);
      ellipse(myX + 15,myY + 15,5,5);
    }else{
      ellipse(myX + 7.5,myY + 7.5,5,5);
      ellipse(myX + 7.5,myY + 15,5,5);
      ellipse(myX + 7.5,myY + 22.5,5,5);
      ellipse(myX + 22.5,myY + 7.5,5,5);
      ellipse(myX + 22.5,myY + 15,5,5);
      ellipse(myX + 22.5,myY + 22.5,5,5);
    }
  }
}
