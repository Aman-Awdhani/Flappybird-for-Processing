
public class Bird {

  float xPos = width/5;
  float yPos =height/2;
  float gravity = 1;
  float velocity =0;
  float birdPush= 60;

  //create bird
  public void Birdy() {

    stroke(255);
    fill(255);
    rect(xPos, yPos, 40, 40);
    
  }

 //apply gravity
  void Gravity() {

    velocity+=gravity;
    velocity*=.93;
    yPos+=velocity;
  }


  //push bird up
  void MoveUp() {
    if (velocity >20) {
      velocity -=birdPush;
    } else
      velocity-=birdPush/2;
  }
}
