class Spaceship extends Floater  
{   
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
    public void setXspeed(double x) {
        myXspeed = x;
     }
    public void setYspeed(double y) {
        myYspeed = y;
     }
    public void setPointDirection(double direction) {
        myPointDirection = direction;
     }
    public void setCenterX(double centerx) {
        myCenterX = centerx;
     }
     public void setCenterY(double centery) {
        myCenterY = centery;
     }
    public void hyperspace(){
       setXspeed(0);
       setYspeed(0);
       setPointDirection((int)(Math.random()*300));
       setCenterX((int)(Math.random()*300));
       setCenterY((int)(Math.random()*300));
    }
}
