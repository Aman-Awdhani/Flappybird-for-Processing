
Bird b;
int score;
ArrayList<wall> w = new ArrayList<wall>();
boolean fly = true;



void setup() {
  size(1000,800);
  b= new Bird();
  gameStart();
}

//spawn first wall
void gameStart() {

  w.add(new wall());
  
}

void draw() {

  background (0);
  Score();
  b.Birdy();
  b.Gravity();

  //spawn wall after certain duration
  if (frameCount % 230 ==0) {
    if (fly) {
      w.add(new wall());
      score++;
    }
  }

  for (int i=0; i < w.size(); i ++) {

    w.get(i).hits(b);
    w.get(i).makeWall();
    w.get(i).wallMove();
  }
}

//score text
void Score() {

  stroke(255);
  fill(255); 
  text(score, width/2, 200);
  textSize(100);
}

//restart the game
void gameRestart() {

  if (!fly) {

    gameStart();  
    for (int i=0; i< w.size(); i++) {

      w.remove(i);
    }

    b.gravity=1;
    b.birdPush = 70;
    b.yPos=50;
    fly=true;
  }
}

//push bird up
void mouseReleased() {
  b.MoveUp();
  gameRestart();
}
