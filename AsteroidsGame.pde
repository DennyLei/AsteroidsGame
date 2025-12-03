Spaceship bob = new Spaceship();
ArrayList <Bullet> dog = new ArrayList <Bullet>();
Star[] susan = new Star[100];
ArrayList <Asteroid> hello = new ArrayList<Asteroid>();
PImage img;
public void setup() 
{
  size(400,400);
  for(int i = 0;i<susan.length;i++){
    susan[i] = new Star();
  }
  for(int i = 0;i<20;i++){
  hello.add(new Asteroid());
  for(int j=0;j<6;j++){
    Asteroid dog = hello.get(i);
    if(j==0){
      dog.setXcorners(j, (int)(Math.random()*-3)-6);
      dog.setYcorners(j, (int)(Math.random()*-2)-10);
      }
    else if(j==1){
      dog.setXcorners(j, (int)(Math.random()*4)+3);
      dog.setYcorners(j, (int)(Math.random()*-4)-6);
    }
    else if(j==2){
      dog.setXcorners(j, (int)(Math.random()*5)+11);
      dog.setYcorners(j, (int)(Math.random()*3));
    }
    else if(j==3){
      dog.setXcorners(j, (int)(Math.random()*3)+6);
      dog.setYcorners(j, (int)(Math.random()*5)+8);
    }
    else if(j==4){
      dog.setXcorners(j, (int)(Math.random()*-2)-3);
      dog.setYcorners(j, (int)(Math.random()*3)+8);
    }
    else{
      dog.setXcorners(j, (int)(Math.random()*-3)-6);
      dog.setYcorners(j, (int)(Math.random()*3));
    }
  }
  }
img = loadImage("chan.png");
}
public void draw() 
{
  background(0);
  for(int i = 0;i<susan.length;i++){
    susan[i].show();
  }
  for(int i = 0;i<dog.size();i++){
    dog.get(i).show();
    dog.get(i).move();
  }
  for (int i = 0; i < hello.size(); i++) {
    hello.get(i).show();
    hello.get(i).move();
    float d = dist((float)bob.getX(),(float)bob.getY(),(float)hello.get(i).getX(), (float)hello.get(i).getY());
    if(d<10){hello.remove(i); bob.setLife();}
    }
  for(int i=0;i<hello.size();i++){
     for(int j=0;j<dog.size();j++){
         float f = dist((float)dog.get(j).getX(),(float)dog.get(j).getY(),(float)hello.get(i).getX(), (float)hello.get(i).getY());
         if(f<10){hello.remove(i);dog.remove(j); break;}
  }
  }
  bob.move();
  bob.show();
  if(bob.getLife() == 0){
    bob.hyperspace();
    for(int i=0;i<hello.size();i++)
      hello.remove(i);
    image(img, 0, 0);
    textSize(25);
    fill(0);
    text("Darth Vader Chan got you", 0, 200); 
  }
  textSize(25);
  fill(0, 255, 255);
  text("Hearts:" + bob.getLife(), 0, 400); 
}
 public void keyPressed(){
     if(bob.getLife()>0){
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
     else if(key == 'q'){
       dog.add(new Bullet(bob));
        
     }
     }
}
