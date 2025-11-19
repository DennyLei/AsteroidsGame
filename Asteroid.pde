public class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
       corners = 6;  
       xCorners = new int[]{-11, 7, 13, 6, -11, -5};   
       yCorners = new int[]{-8, -8, 0, 10, 8, 0};
       myColor = 255;   
       myCenterX = (int)(Math.random()*500);
       myCenterY = (int)(Math.random()*500); //holds center coordinates   
       myXspeed = (int)(Math.random()*4)-2;
       myYspeed = (int)(Math.random()*4)-2;  
       myPointDirection = (int)(Math.random()*10);
       rotSpeed = (Math.random()*2);
  }
  public void setYcorners(int array, int y) {
        yCorners[array] = y;
  }
  public void setXcorners(int array, int x) {
         xCorners[array] = x;
  }
  public double getX() {
       return myCenterX;
   }
   public double getY() {
       return myCenterY;
   }
  public void move(){
  turn(rotSpeed);
  super.move();
  }
  
}
