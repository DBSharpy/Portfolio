class Star {
  //The main ingredient for a star~!
  float fullStar;
  float zeroPoint;
  
  //And here are the other things needed.
  float oneFifth;
  float twoFifth;
  float midStar;
  float fourFifth;
  
  //lastly, some ints for where the star goes.
  int sSignX;
  int sSignY;
  float sSize;
  float sPosX;
  float sPosY;
  
  Star(int starSignX, int starSignY, float starSize, float starPosX, float starPosY) {
    zeroPoint = 0;
    println(zeroPoint);
    fullStar = 62;
    println(fullStar);
    oneFifth = (fullStar/ 5);
    println(oneFifth);
    twoFifth  = ( oneFifth *2 );
    println(twoFifth);
    midStar  = (fullStar/2 );
    println(midStar);
    fourFifth  = ( oneFifth*4 );
    println(fourFifth);
    
    sSignX = starSignX;
    sSignY = starSignY;
    sSize = starSize;
    sPosX = starPosX;
    sPosY = starPosY;
  
  }
  
  void drawStar(){
    beginShape();
    //stroke(5);
      vertex( sSignX*( (midStar * sSize) + sPosX ),   sSignY*( (zeroPoint * sSize) + sPosY ) );
      vertex( sSignX*( (fourFifth * sSize) + sPosX ), sSignY*( (fullStar * sSize) + sPosY )  );
      vertex( sSignX*( (zeroPoint * sSize) + sPosX ), sSignY*( (twoFifth * sSize) + sPosY )  );
      vertex( sSignX*( (fullStar * sSize) + sPosX ),  sSignY*( (twoFifth * sSize) + sPosY )  );
      vertex( sSignX*( (oneFifth * sSize) + sPosX ),  sSignY*( (fullStar * sSize) + sPosY )  );
      vertex( sSignX*( (midStar * sSize) + sPosX ),   sSignY*( (zeroPoint * sSize) + sPosY ) );
      vertex( sSignX*( (31 * sSize) + sPosX ),        sSignY*( (35 * sSize) + sPosY )   );
    endShape(CLOSE);
  }
    
}
