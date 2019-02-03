float gravity = 9.81/100;

float speed1 = 0;
float speed2 = 0;
float speed3 = 0;
float speed4 = 0;

float velocity = 0; 

float initialPos1 = 1000-257.8;
float yPos1 = initialPos1;

float initialPos2 = 1000-515.6;
float yPos2 = initialPos2;

float initialPos3 = 1000-755;
float yPos3 = initialPos3;

float initialPos4 = 1000-976;
float yPos4 = initialPos4;

float frame = 0;

float time1 = 0; 
float time2 = 0;
float time3 = 0;
float time4 = 0;

float bounce1 = 0;
float bounce2 = 0;
float bounce3 = 0;
float bounce4 = 0;


void setup(){
  
  size (625,1000);
  smooth();
  background(200);
  noStroke();
  frameRate(100);

}

void draw(){  
  
  background(200);
  
  for(int i = 1000; i>0; i = i-100){
    fill(0);
    stroke(0);
    line(0,i,10,i);
    textSize(10);
    text((1000-i)/100, 15, i);
    
  }
  
    ellipse(125,yPos1, 20, 20);
    ellipse(250,yPos2, 20, 20);
    ellipse(375,yPos3, 20, 20);
    ellipse(500,yPos4, 20, 20);
    
    frame = frame + 1;


    //test 1
    if(bounce1 == 0){
      
      yPos1 = yPos1 + speed1;
      speed1 = speed1 + gravity;

      if(yPos1 >= 990){
        yPos1 = 990;
        speed1 = speed1/2;
        bounce1 = 1;  
        time1 = frame/100;
        println("Test 1 Height 2.578m");    
        println("Time = "+time1+" Sec");
        velocity = (9.8*time1);  
        println("Velocity = "+velocity+" M/Sec");
        println();
      
      }
      
    }
   
    if(bounce1 != 0){
      
      textSize(20);
      yPos1 = yPos1 - speed1;
      speed1 = speed1 - gravity;
      text("Test 1 Height 2.578m", 55, initialPos1+50);
      text("Time = "+time1+" Sec", 55, initialPos1+75);
    
    }
    
    
    //test 2
    if(bounce2==0){
      
      yPos2 = yPos2 + speed2;
      speed2 = speed2 + gravity;

      if(yPos2 >= 990){
        
        yPos2 = 990;
        speed2 = speed2/2;
        bounce2 = 1;  
        time2 = frame/100;
        println("Test 2 Height 5.156m");
        println("Time = "+time2+" Sec");
        velocity = (9.8*time2);  
        println("Velocity = "+velocity+" M/Sec");
        println();
        
      }
      
    }
    
    if(bounce2 != 0){
      
      textSize(20);
      yPos2 = yPos2 - speed2;
      speed2 = speed2 - gravity;
      text("Test 2 Height 5.156m", 160, initialPos2+50);
      text("Time = "+time2+" Sec", 160, initialPos2+75);
      
    }
    
    
    //test 3
    if(bounce3 == 0){
      
      yPos3 = yPos3 + speed3;
      speed3 = speed3 + gravity;
      
      if(yPos3 >= 990){
        
        yPos3 = 990;
        speed3 = speed3/2;
        bounce3 = 1;  
        time3 = frame/100;
        println("Test 3 Height 7.550m");
        println("Time = "+time3+" Sec");
        velocity = (9.8*time3);  
        println("Velocity = "+velocity+" M/Sec");
        println();
        
      }
      
    }
    if(bounce3 != 0){
      
      textSize(20);
      yPos3 = yPos3 - speed3;
      speed3 = speed3 - gravity;
      text("Test 3 Height 7.550m", 265, initialPos3+50);
      text("Time = "+time3+" Sec", 265, initialPos3+75);
      
    }
    
    
    //test 4
    if(bounce4 == 0){    
      
      yPos4 = yPos4 + speed4;
      speed4 = speed4 + gravity;
      
      if(yPos4 >= 990){
        
        yPos4 = 990;
        speed4 = speed4/2;
        bounce4 = 1;  
        time4 = frame/100;
        println("Test 4 Height 9.760m");
        println("Time = "+time4+" Sec");      
        velocity = (9.8*time4);  
        println("Velocity = "+velocity+" M/Sec");
        println();
        
      }
      
    }
    
    if(bounce4 != 0){
      
      textSize(20);
      yPos4 = yPos4 - speed4;
      speed4 = speed4 - gravity;
      text("Test 4 Height 9.760m", 380, initialPos4+50);
      text("Time = "+time4+" Sec", 380, initialPos4+75);
      
    }
    
}
