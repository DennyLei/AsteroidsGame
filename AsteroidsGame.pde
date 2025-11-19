Spaceship bob = new Spaceship();
Star[] susan = new Star[100];
ArrayList <Asteroid> hello = new ArrayList<Asteroid>();
public void setup() 
{
  size(400,400);
  for(int i = 0;i<susan.length;i++){
    susan[i] = new Star();
  }
  for(int i = 0;i<10;i++){
  hello.add(new Asteroid());
  for(int j=0;j<6;j++){
    Asteroid dog = hello.get(i);
    if(j==0){
      dog.setXcorners(j, (int)(Math.random()*-2)-10);
      dog.setYcorners(j, (int)(Math.random()*-3)-6);
      }
    else if(j==2){
      dog.setXcorners(j, (int)(Math.random()*4)+6);
      dog.setYcorners(j, (int)(Math.random()*-3)-6);
    }
    else if(j==3){
      dog.setXcorners(j, (int)(Math.random()*5)+11);
      dog.setYcorners(j, (int)(Math.random()*3)+8);
    }
    else if(j==4){
      dog.setXcorners(j, (int)(Math.random()*3)+6);
      dog.setYcorners(j, (int)(Math.random()*5)+8);
    }
    else if(j==5){
      dog.setXcorners(j, (int)(Math.random()*-2)-10);
      dog.setYcorners(j, (int)(Math.random()*3)+8);
    }
    else{
      dog.setXcorners(j, (int)(Math.random()*-3)-6);
      dog.setYcorners(j, (int)(Math.random()*3)+8);
    }
  }
  }
}
public void draw() 
{
  background(0);
  for(int i = 0;i<susan.length;i++){
    susan[i].show();
  }
  for (int i = 0; i < hello.size(); i++) {
    hello.get(i).show();
    hello.get(i).move();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)hello.get(i).getX(), (float)hello.get(i).getY());
    if(d<10)hello.remove(i);
  }
  bob.move();
  bob.show();
}
 public void keyPressed(){
     if(key == 'w'){
       bob.accelerate(1);
     }
     else if(key == 's'){
       bob.accelerate(-1);
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
