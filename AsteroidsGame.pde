Spaceship bob = new Spaceship();
Star[] susan = new Star[100];
Asteroid ninja = new Asteroid();
public void setup() 
{
  size(400,400);
  for(int i = 0;i<susan.length;i++){
    susan[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0;i<susan.length;i++){
    susan[i].show();
  }
  bob.move();
  bob.show();
  ninja.show();
  ninja.move();
}
 public void keyPressed(){
     if(key == 'w'){
       bob.accelerate(1);
     }
     else if(key == 'a'){
       bob.turn(-10);
     }
     else if(key == 'd'){
       bob.turn(10);
     }
     else if(key == 'h'){
       bob.hyperspace();     
     }

}
