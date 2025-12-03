public class Spaceship extends Floater  
{   
    private int health = 3;
    public Spaceship(){
       corners = 3;  
       xCorners = new int[]{-8, 16, -8};   
       yCorners = new int[]{-8, 0, 8};
       myColor = 255;   
       myCenterX = 250;
       myCenterY = 250; //holds center coordinates   
       myXspeed = 0;
       myYspeed = 0;  
       myPointDirection = 0;
    }
    public double getX() {
        return myCenterX;
     }
    public double getY() {
        return myCenterY;
     }
    public double getXspeed() {
        return myXspeed;
     }
    public double getYspeed() {
        return myYspeed;
     }
    public double getPointDirection() {
        return myPointDirection;
     }
    public void setLife(){
        health--;
     }
    public int getLife(){
        return health;
     }


    public void hyperspace(){
       myXspeed = 0;
       myYspeed = 0;
       myPointDirection = (int)(Math.random()*360);
       myCenterX = (int)(Math.random()*300);
       myCenterY = (int)(Math.random()*300);
    }
}
