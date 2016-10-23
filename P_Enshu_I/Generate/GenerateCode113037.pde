float [] pointX = new float [5000];
float [] pointY = new float [5000];
int [] pointStrokeFlag = new int [5000];
int [] pointMoveFlag = new int [5000];
int [] pointMoveFLAGX = new int [5000];
int [] pointMoveFLAGY = new int [5000];
float [] pointVX = new float [5000];
float [] pointVY = new float [5000];

float [] lineX1 = new float [500];
float [] lineY1 = new float [500];
float [] lineX2 = new float [500];
float [] lineY2 = new float [500];
float [] lineW = new float [500];
float [] lineH = new float [500];
int [] lineStrokeFlag = new int [500];
int [] lineMoveFlag = new int [500];
int [] lineMoveFLAGX = new int [500];
int [] lineMoveFLAGY = new int [500];
float [] lineVX = new float [500];
float [] lineVY = new float [500];

float [] rectX = new float [500];
float [] rectY = new float [500];
float [] rectW = new float [500];
float [] rectH = new float [500];
float [] rectX2 = new float [500];
float [] rectY2 = new float [500];
int [] rectFillFlag = new int [500];
int [] rectMoveFlag = new int [500];
int [] rectMoveFLAGX = new int [500];
int [] rectMoveFLAGY = new int [500];
float [] rectVX = new float [500];
float [] rectVY = new float [500];

int [] beginShapeFLAG = new int [500];
float [][] vertexX = new float [500][500];
float [][] vertexY = new float [500][500];
int [] vertexFillFlag = new int [500];
int [] vertexFlag = new int [500];
int [] lastVertexFlag = new int [500];
int vertexCount;
int [] vertexMoveFlag = new int [500];
float [] vertexMoveFLAGX = new float [500];
float [] vertexMoveFLAGY = new float [500];
float [] MaxX = new float [500];
float [] minX = new float [500];
float [] MaxY = new float [500];
float [] minY = new float [500];
float [][] DistX = new float [500][500];
float [][] distX = new float [500][500];
float [][] DistY = new float [500][500];
float [][] distY = new float [500][500];
float [] vertexVX = new float [500];
float [] vertexVY = new float [500];

int [] ellipFillFlag = new int [500];
int [] ellipMoveFlag = new int [500];
int [] ellipMoveFLAGX = new int [500];
int [] ellipMoveFLAGY = new int [500];
float [] ellipX = new float [500];
float [] ellipY = new float [500];
float [] ellipR1 = new float [500];
float [] ellipR2 = new float [500];
int [] ellipFlag = new int [500];
int [] ellipFLAG = new int [500];
float [] ellipVX = new float [500];
float [] ellipVY = new float [500];

void setup(){
  size(1000, 600);
  for(int p=0; p<5000; p++){
    pointVX[p]=random(1, 3);
    pointVY[p]=random(1, 3);
    pointMoveFLAGX[p]=(int)random(2);
    pointMoveFLAGY[p]=(int)random(2);
  }
  for(int l=0; l<500; l++){
    lineVX[l]=random(1, 3);
    lineVY[l]=random(1, 3);
    lineMoveFLAGX[l]=(int)random(2);
    lineMoveFLAGY[l]=(int)random(2);
  }
  for(int r=0; r<500; r++){
    rectVX[r]=random(1, 3);
    rectVY[r]=random(1, 3);
    rectMoveFLAGX[r]=(int)random(2);
    rectMoveFLAGY[r]=(int)random(2);
  }
  for(int v=0; v<500; v++){
    vertexVX[v]=random(1, 3);
    vertexVY[v]=random(1, 3);
    vertexMoveFLAGX[v]=(int)random(2);
    vertexMoveFLAGY[v]=(int)random(2);
  }
  for (int e=0; e<500; e++) {
    ellipVX[e]=random(1, 3);
    ellipVY[e]=random(1, 3);
    ellipMoveFLAGX[e]=(int)random(2);
    ellipMoveFLAGY[e]=(int)random(2);
  }
  pointX[0]=236.66666;
  pointY[0]=165.0;
  pointX[1]=244.99998;
  pointY[1]=176.66666;
  pointX[2]=251.66666;
  pointY[2]=190.0;
  pointX[3]=253.33333;
  pointY[3]=188.33333;
  pointX[4]=254.99998;
  pointY[4]=186.66666;
  pointX[5]=263.3333;
  pointY[5]=180.0;
  pointX[6]=280.0;
  pointY[6]=171.66666;
  pointX[7]=315.0;
  pointY[7]=176.66666;
  pointX[8]=318.3333;
  pointY[8]=185.0;
  pointX[9]=311.66666;
  pointY[9]=206.66666;
  pointX[10]=278.3333;
  pointY[10]=229.99998;
  pointX[11]=234.99998;
  pointY[11]=239.99998;
  pointX[12]=199.99998;
  pointY[12]=239.99998;
  pointX[13]=185.0;
  pointY[13]=236.66666;
  pointX[14]=185.0;
  pointY[14]=218.33333;
  pointX[15]=209.99998;
  pointY[15]=178.33333;
  pointX[16]=308.3333;
  pointY[16]=113.33333;
  pointX[17]=328.3333;
  pointY[17]=109.99999;
  pointX[18]=353.3333;
  pointY[18]=114.99999;
  pointX[19]=353.3333;
  pointY[19]=114.99999;
  pointX[20]=353.3333;
  pointY[20]=114.99999;
  pointX[21]=353.3333;
  pointY[21]=114.99999;
  pointX[22]=353.3333;
  pointY[22]=114.99999;
  pointX[23]=338.3333;
  pointY[23]=176.66666;
  pointX[24]=341.66666;
  pointY[24]=170.0;
  pointX[25]=358.3333;
  pointY[25]=151.66666;
  pointX[26]=376.66666;
  pointY[26]=131.66666;
  pointX[27]=376.66666;
  pointY[27]=133.33333;
  pointX[28]=376.66666;
  pointY[28]=140.0;
  pointX[29]=358.3333;
  pointY[29]=160.0;
  pointX[30]=345.0;
  pointY[30]=171.66666;
  pointX[31]=338.3333;
  pointY[31]=176.66666;
  pointX[32]=338.3333;
  pointY[32]=175.0;
  pointX[33]=338.3333;
  pointY[33]=175.0;
  pointX[34]=338.3333;
  pointY[34]=153.33333;
  lineX1[0]=469.99997;
  lineY1[0]=111.666664;
  lineX2[0]=469.99997;
  lineY2[0]=111.666664;
  lineX1[1]=538.3333;
  lineY1[1]=168.33333;
  lineX2[1]=538.3333;
  lineY2[1]=171.66666;
  lineX1[2]=540.0;
  lineY1[2]=201.66666;
  lineX2[2]=540.0;
  lineY2[2]=204.99998;
  lineX1[3]=498.3333;
  lineY1[3]=251.66666;
  lineX2[3]=486.66666;
  lineY2[3]=260.0;
  lineX1[4]=308.3333;
  lineY1[4]=350.0;
  lineX2[4]=308.3333;
  lineY2[4]=350.0;
  lineX1[5]=146.66666;
  lineY1[5]=393.3333;
  lineX2[5]=145.0;
  lineY2[5]=393.3333;
  lineX1[6]=486.66666;
  lineY1[6]=228.33333;
  lineX2[6]=489.99997;
  lineY2[6]=224.99998;
  lineX1[7]=665.0;
  lineY1[7]=126.666664;
  lineX2[7]=665.0;
  lineY2[7]=126.666664;
  lineX1[8]=745.0;
  lineY1[8]=161.66666;
  lineX2[8]=745.0;
  lineY2[8]=161.66666;
  lineX1[9]=768.3333;
  lineY1[9]=221.66666;
  lineX2[9]=768.3333;
  lineY2[9]=223.33333;
  lineX1[10]=763.3333;
  lineY1[10]=260.0;
  lineX2[10]=760.0;
  lineY2[10]=265.0;
  lineX1[11]=701.6666;
  lineY1[11]=306.66666;
  lineX2[11]=701.6666;
  lineY2[11]=306.66666;
  lineX1[12]=646.6666;
  lineY1[12]=323.3333;
  lineX2[12]=646.6666;
  lineY2[12]=323.3333;
  lineX1[13]=568.3333;
  lineY1[13]=328.3333;
  lineX2[13]=568.3333;
  lineY2[13]=328.3333;
  lineX1[14]=511.66666;
  lineY1[14]=330.0;
  lineX2[14]=504.99997;
  lineY2[14]=331.66666;
  lineX1[15]=419.99997;
  lineY1[15]=325.0;
  lineX2[15]=413.3333;
  lineY2[15]=325.0;
  lineX1[16]=366.66666;
  lineY1[16]=321.66666;
  lineX2[16]=361.66666;
  lineY2[16]=321.66666;
  lineX1[17]=308.3333;
  lineY1[17]=328.3333;
  lineX2[17]=308.3333;
  lineY2[17]=328.3333;
  lineX1[18]=231.66666;
  lineY1[18]=366.66666;
  lineX2[18]=229.99998;
  lineY2[18]=368.3333;
  lineX1[19]=228.33333;
  lineY1[19]=394.99997;
  lineX2[19]=228.33333;
  lineY2[19]=394.99997;
  lineX1[20]=330.0;
  lineY1[20]=439.99997;
  lineX2[20]=330.0;
  lineY2[20]=439.99997;
  lineX1[21]=366.66666;
  lineY1[21]=439.99997;
  lineX2[21]=366.66666;
  lineY2[21]=439.99997;
  lineX1[22]=535.0;
  lineY1[22]=411.66666;
  lineX2[22]=535.0;
  lineY2[22]=411.66666;
  lineX1[23]=591.6666;
  lineY1[23]=401.66666;
  lineX2[23]=591.6666;
  lineY2[23]=401.66666;
  lineX1[24]=665.0;
  lineY1[24]=355.0;
  lineX2[24]=665.0;
  lineY2[24]=355.0;
  lineX1[25]=718.3333;
  lineY1[25]=290.0;
  lineX2[25]=721.6666;
  lineY2[25]=283.3333;
  lineX1[26]=743.3333;
  lineY1[26]=251.66666;
  lineX2[26]=746.6666;
  lineY2[26]=246.66666;
  lineX1[27]=761.6666;
  lineY1[27]=218.33333;
  lineX2[27]=763.3333;
  lineY2[27]=214.99998;
  lineX1[28]=821.6666;
  lineY1[28]=146.66666;
  lineX2[28]=826.6666;
  lineY2[28]=145.0;
  lineX1[29]=753.3333;
  lineY1[29]=181.66666;
  lineX2[29]=753.3333;
  lineY2[29]=183.33333;
  lineX1[30]=781.6666;
  lineY1[30]=165.0;
  lineX2[30]=781.6666;
  lineY2[30]=166.66666;
  ellipX[0]=258.3333;
  ellipY[0]=138.33333;
  ellipR1[0]=93.33334;
  ellipR2[0]=51.66667;
  ellipX[1]=396.66666;
  ellipY[1]=211.66666;
  ellipR1[1]=38.333313;
  ellipR2[1]=23.333328;
  ellipX[2]=453.3333;
  ellipY[2]=246.66666;
  ellipR1[2]=33.333344;
  ellipR2[2]=38.333344;
  ellipX[3]=513.3333;
  ellipY[3]=315.0;
  ellipR1[3]=6.666687;
  ellipR2[3]=10.0;
  ellipX[4]=541.6666;
  ellipY[4]=346.66666;
  ellipR1[4]=20.0;
  ellipR2[4]=43.333313;
  ellipX[5]=588.3333;
  ellipY[5]=406.66666;
  ellipR1[5]=8.333313;
  ellipR2[5]=8.333313;
  strokeFlag[0]=1;
  strokeFlag[1]=1;
  strokeFlag[2]=1;