//    Brandon Linton MIS 1 Final Project

//    This piece is pop artist Robert Indiana's American Dream 1. (1961)
//    This was the first in his "American Dream" series, it's 
//    namesake from "the social and political aspirations of 
//    the United States" when he was developing as an artist.  
//    Most of his paintings and sculptures usually portray 
//    a theme associated with American ideals; his most famous 
//    being the "LOVE" sculpture.  American Dream 1 was painted
//    to go along with a poem by Robert Creeley:
//    
//    "Edges and disjuncts, shattered, bitter planes,
//    a wedge of disconsolate memories to echo fame,
//    fear of the past, a future still to blame--
//    
//    Multiple heavens, hells, nothing is straight.
//    You earn your money, then you wait
//    for so-called life to see that you get paid.
//    
//    Tilt! Again it's all gone wrong.
//    This is a heartless, hopeless song.
//    This is an empty, useless song."


int numStars = 19;
Star[] superStar = new Star[numStars];

int jiggyX, jiggyY = 0;

int randoNum = 0;

PFont strikeFont, eleFont;

color notBlack = color( 10, 10, 10 );
color canvas = color( 125, 90, 40 );
color colorRed = color( 187, 51, 32 );
color colorBlue = color( 33, 92, 184 );
color colorGreen = color( 35, 88, 68 );
color colorYellow = color( 200, 166, 0 );

void setup(){
  size( 500, 600 );
  colorMode( RGB, 255 );
  frameRate = 60;
  noStroke();
  smooth();
  
  eleFont = loadFont("Elephant-Regular-48.vlw");
  
  jiggyX = 0;
  jiggyY = 0;
    
  //now for (most of) the stars!
  superStar[0] = new Star(1, -1, 1, -110, -55);
  superStar[1] = new Star(-1, -1, 1, -110, -55);
  superStar[2] = new Star(1, -1, 1, 20, 30);
  superStar[3] = new Star(-1, -1, 1, 20, 30);
  superStar[17] = new Star(1, -1, 1, -30, -115);
  
  superStar[4] = new Star(-1, 1, .5, -108, -45);
  superStar[5] = new Star(1, 1, .5, -108, -45);
  superStar[6] = new Star(-1, 1, .5, 38, 63);
  superStar[7] = new Star(1, 1, .5, 38, 63);
  superStar[18] = new Star(-1, 1, .5, -15, -114);
  
  superStar[8] = new Star(1, 1, 2.45, -76, -83);
  
  superStar[15] = new Star(1, 1, 1.7, -55, -63);
  superStar[16] = new Star(1, 1, 1.8, -55, -63);
}

void draw(){



  //I put a solid coffee brown color for the first layer of my canvas...
  background( canvas );
  




  //The second layer, my borders...black, but not TOO black...(COME BACK TO THIS)
  fill( notBlack );
  beginShape();
    vertex(0, 0);
    vertex(width, 0);
    vertex(width, 20);
    vertex(0, 35);
  endShape(CLOSE);
  




  //The lower border, much like the first...
  beginShape();
    vertex(0, height);
    vertex(width, height);
    vertex(width, height-35);
    vertex(0, height-20);
  endShape(CLOSE);
  




  //And one more, in the middle, separating the bottom from the top...
  //Sculpted from a separation 60 pixels high directly in the middle...
  beginShape();
    vertex(0, 280);
    vertex(125, 290);
    vertex(width, 260);
    vertex(width, 300);
    vertex((width-125), 290);
    vertex(0, 320);
  endShape(CLOSE);
  




  //middle
//  stroke(5);
//  line(width/2, 0, width/2, height);
//  noStroke();
  
  ellipseMode(CORNER);
  






  //the first circle, reminding me of a dart board of some sort...
  fill( notBlack );
  ellipse( 5, 35, 245, 245 );
  
  fill( colorYellow );
  rectMode(CORNERS);
  rect(49, 63, 102, 251);
  rect(152, 63, 206, 251);
  arc(5, 35, 245, 245, radians(50), radians(75) );
  arc(5, 35, 245, 245, radians(105), radians(130) );
  arc(5, 35, 245, 245, radians(230), radians(255) );
  arc(5, 35, 245, 245, radians(285), radians(310) );
  fill( notBlack );  
  rect(95, 39, 159, 276);
  
  fill( notBlack );
  ellipseMode(CENTER);
  ellipse( 127.5, 157.5, 160, 160 );
  
  pushMatrix();
    translate( 127.5, 157.5 );
    rotate(-frameCount/20.0);
      fill(canvas);
      rectMode(CENTER);
      rect( 0, 0, 113, 113 );
  popMatrix();
  
  pushMatrix();
    translate( 127.5, 157.5 );
    rotate(-frameCount/20.0);
      fill(notBlack);
      ellipseMode( CENTER );
      ellipse(0, 0, 113, 113);
    popMatrix();  
  
  pushMatrix();
    translate( 127.5, 157.5 );
    rotate(frameCount/20.0);
      fill(canvas);
      superStar[16].drawStar();
    popMatrix();
    
  textFont(eleFont, 28);
  fill(255);
  text(37+randoNum,  8, 165);
  text(29+randoNum,  209, 165);
  text(40+randoNum,  106, 70);
  text(66+randoNum,  106, 270);
  
  if( jiggyX > 0 )
    randoNum++;
  else if (randoNum == 30)
    randoNum=0;
    
    
    
  //the second circle
  
  ellipseMode(CORNER);
  fill( notBlack );
  ellipse( 260, 25, 235, 235 );
  
  ellipseMode(CENTER);
  fill( colorRed );
  ellipse( 377.5, 142.5, 160, 160 );
  
  //big black star
  pushMatrix();
    translate( 377.5, 142.5 );
    rotate(-frameCount*0);
      fill( notBlack );
      superStar[8].drawStar();
  popMatrix();
  
  //stars of blue
  pushMatrix();
    translate( 377.5, 142.5 );
    rotate(-frameCount/20.0);
      fill( colorBlue );
      superStar[0].drawStar();
      superStar[1].drawStar();
      superStar[2].drawStar();
      superStar[3].drawStar();
      superStar[17].drawStar();      
  popMatrix();
  
  //stars of white
  pushMatrix();
    translate( 377.5, 142.5 );
    rotate(frameCount/20.0);
      fill( 255 );
      superStar[4].drawStar();
      superStar[5].drawStar();
      superStar[6].drawStar();
      superStar[7].drawStar();
      superStar[18].drawStar();      
  popMatrix();
  
  textFont(eleFont, 14);
  fill(255);
  text("TAKE",  353, 142);
  text("ALL",  359, 158);
  
  
              
   
    //the third circle
  ellipseMode(CORNER);
  fill( notBlack );
  ellipse( 5-jiggyX, (height-270)-jiggyY, 235, 235 );
  
  fill(colorBlue);
  beginShape();
    vertex(180+jiggyX, 370+jiggyY);
    vertex(210+jiggyX, 480+jiggyY);
    vertex(125+jiggyX, 540+jiggyY);
    vertex(35+jiggyX, 480+jiggyY);
    vertex(65+jiggyX, 370+jiggyY);
  endShape(CLOSE);
  
  superStar[9] = new Star(1, 1, 2.3, 52-jiggyX, 370-jiggyY);
  
  fill(colorRed);
  superStar[9].drawStar();
    
  superStar[10] = new Star(1, 1, 1, 141-jiggyX, 345-jiggyY);
  superStar[11] = new Star(1, 1, 1, 168-jiggyX, 439-jiggyY);  
  superStar[12] = new Star(1, 1, 1, 94-jiggyX, 494-jiggyY);
  superStar[13] = new Star(1, 1, 1, 15-jiggyX, 439-jiggyY);
  superStar[14] = new Star(1, 1, 1, 42-jiggyX, 345-jiggyY);
  
  fill(colorGreen);
  superStar[10].drawStar();
  superStar[11].drawStar();
  superStar[12].drawStar();
  superStar[13].drawStar();
  superStar[14].drawStar();
  
  //TILT!
  textFont(eleFont, 18);
  fill(notBlack);
  text("TILT", 97+jiggyX, 448+jiggyY);
  
  ellipseMode(CORNER);
  ellipse(101+jiggyX, 455+jiggyY, 6, 6);
  ellipse(113+jiggyX, 453+jiggyY, 6, 6);
  ellipse(126+jiggyX, 455+jiggyY, 6, 6);
  ellipse(140+jiggyX, 453+jiggyY, 6, 6);
  
  
  
  textFont(eleFont, 16);
  fill(255);
  text("1", 168+jiggyX, 385+jiggyY);
  textFont(eleFont, 16);
  fill(255);
  text("2", 194+jiggyX, 480+jiggyY);
  textFont(eleFont, 16);
  fill(255);
  text("3", 120+jiggyX, 535+jiggyY);
  textFont(eleFont, 16);
  fill(255);
  text("4", 40+jiggyX, 480+jiggyY);
  textFont(eleFont, 16);
  fill(255);
  text("5", 68+jiggyX, 385+jiggyY);
  
  if( jiggyX == 0  )
  {
    jiggyX+=random(-2, 2);
    jiggyY+=random(-2, 2);
  }
  else
  {
    jiggyX=0;
    jiggyY=0;
  }
    
    
    
  
  
  //the last circle
  fill( notBlack );
  ellipse( 250, 310, 245, 245 );
  fill( canvas );
  ellipseMode(CENTER);
  ellipse( 250+122.5, 310+122.5, 165, 165 );
  
  pushMatrix();
    translate( 250+122.5, 310+122.5 );
    rotate(-frameCount/20.0);
      fill( notBlack );
      rectMode(CENTER);
      rect( 0, 0, 117, 117 );
  popMatrix();
  
  pushMatrix();
      translate( 250+122.5, 310+122.5 );
      rotate(-frameCount/20.0);  
    fill(canvas);
    ellipseMode(CENTER);
    ellipse( 0, 0, 117, 117 );
  popMatrix();
  
  pushMatrix();
      translate( 250+122.5, 310+122.5 );
      rotate(frameCount/20.0);  
    fill(notBlack);
    superStar[16].drawStar();
  popMatrix();
  
  
}


//  The classic "randInt" function.  Always necessary.
int randInt ( int minVal, int maxVal ) 
{
  return int( random( minVal, maxVal+1 ) );
}
