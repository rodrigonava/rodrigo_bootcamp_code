float x1, x2, x3, x4, x5, x6;
float y1, y2, y3, y4, y5, y6;

float c1,c2;
float cs1;

float s1, s2, s3, s4, s5, s6;

void setup (){
  size(1200,400);
  
  x1= 640;
  x2= 610;
  x3= 550;
  x4= 720;
  x5= 750;
  
  y1= 150;
  y2= 60;
  y3= 120;
  y4= 320;
  y5= 150;
  
  c1 = 730;
  c2 = 120;
  cs1 = random (1,5);
  
}

void draw(){
  background (random (0,255),190,150);
  
    s1 = random (-5,5);
    s2 = random (-5,5);
    s3 = random (-5,5);
    s4 = random (-5,5);
    s5 = random (-5,5);
  
  //First Circle
  fill (80,0,255);
  noStroke();
  ellipse(150,150,200,200);
  noFill();
  stroke(255,255,255);
  strokeWeight(5);
  ellipse(random(0,1200),150,170,170);
  
  //Cross
  stroke(80,0,255);
  strokeWeight(3);
  line(160,280,650,170);
  line(400,30,470,350);
  line(430,300,480,290);
  line(430,280,480,270);
  line(430,320,480,310);
  
  //Triangles
  fill (80,0,255,60);
  triangle(x1,y1,x2,y2,x3,y3);
  triangle(x1,y1,x4,y4,x5,y5);
  x1 += s1;
  x2 += s2;
  x3 += s3;
  x4 += s4;
  x5 += s5;
  
  y1 += s1*2;
  y2 += s2*0.5;
  y3 += s3*3;
  y4 += s4*5;
  y5 += s5*2;
  
  if (x1 <= width || x2 <= width ||x3 <= width ||x4<= width || x5 <= width)
      x1 = -x1;
      x2 = -x2;
      x3 = -x3;
      x4 = -x4;
      x5 = -x5;
      
  if (y1 <= height || y2 <= height ||y3 <= height ||y4<= height || y5 <= height)
      y1 = -y1;
      y2 = -y2;
      y3 = -y3;
      y4 = -y4;
      y5 = -y5;
      
  
  //second circle
  fill (10,150,205,60);
  strokeWeight(random(0,6));
  ellipse(c1,c2,110,110);
  
   if (c1 > width - 5 || c1 < 5){
      cs1 *= -1;
    }
     c1 += cs1*5;  
    
    if (c2 > height - 5 || c2 < 5){
      cs1 *= -1;
    }
     c2 += cs1*5; 
  
  //bottom line
  strokeWeight(3);
  line(660,320,950,320);
  line(770,320,760,360);
  
  //triangle
  triangle(770,320,900,320,850,50);
  
  //square
  strokeWeight(4);
  rect(640,330,20,20);
  line(750,340,790,340);
  
  //top lines
  line(1000,80,920,100);
  line(1005,100,940,120);
  line(1010,120,970,140);
}