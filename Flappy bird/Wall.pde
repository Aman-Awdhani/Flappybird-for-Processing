public class wall{
 
   float speed = 3;    
   float  y1 = random(height/1.4);
   float  y2 = (height-y1)*.7;
   float  x = width+80;
   float w = 20;
      
      
   //check collision  
   void hits(Bird b){
      
      if(b.yPos <= y1 || b.yPos >= height-y2){
        
        if(b.xPos >= x-50 && b.xPos < x){
          
          b.gravity =0;
          b.velocity=0;
          b.birdPush=0;
          
          speed=0;
          score=0;
          fly =false;      
             
        }              
      }           
    }  
      
      
  //create walls 
  void makeWall(){
    
      stroke(255,0,0);     
      fill(255,0,0);
      if(fly){
      rect(x,0,w,y1);
      rect(x,height-y2,w,y2);
      }
  }
  
  
  
  //move walls
  void wallMove(){
    if(fly)
    x-=speed;  
  }   
}