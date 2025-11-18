public class Asteroid extends Floater{
  private double rotSpeed;
  Asteroid(){
       corners = 6;  
       xCorners = new int[]{-11, 7, 13, 6, -11, -5};   
       yCorners = new int[]{-8, -8, 0, 10, 8, 0};
       myColor = 255;   
       myCenterX = 250;
       myCenterY = 250; //holds center coordinates   
       myXspeed = 2;
       myYspeed = 2;  
       myPointDirection = 0;
       rotSpeed = 1.0;
  }
  public void move(){
  turn(rotSpeed);
  super.move();
  }
  
}
