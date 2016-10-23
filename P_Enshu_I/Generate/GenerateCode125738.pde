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
  pointX[0]=193.33333;
  pointY[0]=96.666664;
  pointX[1]=193.33333;
  pointY[1]=96.666664;
  pointX[2]=196.66666;
  pointY[2]=108.33333;
  pointX[3]=196.66666;
  pointY[3]=111.666664;
  pointX[4]=196.66666;
  pointY[4]=111.666664;
  pointX[5]=193.33333;
  pointY[5]=126.666664;
  pointX[6]=186.66666;
  pointY[6]=136.66666;
  pointX[7]=180.0;
  pointY[7]=150.0;
  pointX[8]=178.33333;
  pointY[8]=153.33333;
  pointX[9]=168.33333;
  pointY[9]=166.66666;
  pointX[10]=161.66666;
  pointY[10]=178.33333;
  pointX[11]=155.0;
  pointY[11]=188.33333;
  pointX[12]=145.0;
  pointY[12]=201.66666;
  pointX[13]=141.66666;
  pointY[13]=204.99998;
  pointX[14]=141.66666;
  pointY[14]=203.33333;
  pointX[15]=140.0;
  pointY[15]=201.66666;
  pointX[16]=138.33333;
  pointY[16]=193.33333;
  pointX[17]=138.33333;
  pointY[17]=186.66666;
  pointX[18]=138.33333;
  pointY[18]=181.66666;
  pointX[19]=141.66666;
  pointY[19]=171.66666;
  pointX[20]=148.33333;
  pointY[20]=161.66666;
  pointX[21]=156.66666;
  pointY[21]=151.66666;
  pointX[22]=168.33333;
  pointY[22]=141.66666;
  pointX[23]=185.0;
  pointY[23]=128.33333;
  pointX[24]=201.66666;
  pointY[24]=118.33333;
  pointX[25]=239.99998;
  pointY[25]=109.99999;
  pointX[26]=261.66666;
  pointY[26]=108.33333;
  pointX[27]=278.3333;
  pointY[27]=108.33333;
  pointX[28]=291.66666;
  pointY[28]=111.666664;
  pointX[29]=291.66666;
  pointY[29]=111.666664;
  pointX[30]=318.3333;
  pointY[30]=124.99999;
  pointX[31]=328.3333;
  pointY[31]=136.66666;
  pointX[32]=328.3333;
  pointY[32]=136.66666;
  pointX[33]=340.0;
  pointY[33]=168.33333;
  pointX[34]=340.0;
  pointY[34]=168.33333;
  pointX[35]=345.0;
  pointY[35]=213.33333;
  pointX[36]=345.0;
  pointY[36]=213.33333;
  pointX[37]=345.0;
  pointY[37]=228.33333;
  pointX[38]=343.3333;
  pointY[38]=231.66666;
  pointX[39]=343.3333;
  pointY[39]=231.66666;
  pointX[40]=320.0;
  pointY[40]=241.66666;
  pointX[41]=303.3333;
  pointY[41]=244.99998;
  pointX[42]=303.3333;
  pointY[42]=244.99998;
  pointX[43]=268.3333;
  pointY[43]=248.33333;
  pointX[44]=248.33333;
  pointY[44]=248.33333;
  pointX[45]=226.66666;
  pointY[45]=248.33333;
  pointX[46]=226.66666;
  pointY[46]=248.33333;
  pointX[47]=226.66666;
  pointY[47]=248.33333;
  pointX[48]=206.66666;
  pointY[48]=248.33333;
  pointX[49]=206.66666;
  pointY[49]=248.33333;
  pointX[50]=198.33333;
  pointY[50]=243.33333;
  pointX[51]=194.99998;
  pointY[51]=238.33333;
  pointX[52]=193.33333;
  pointY[52]=238.33333;
  pointX[53]=191.66666;
  pointY[53]=236.66666;
  pointX[54]=191.66666;
  pointY[54]=236.66666;
  pointX[55]=188.33333;
  pointY[55]=233.33333;
  pointX[56]=188.33333;
  pointY[56]=233.33333;
  pointX[57]=185.0;
  pointY[57]=228.33333;
  pointX[58]=183.33333;
  pointY[58]=226.66666;
  pointX[59]=181.66666;
  pointY[59]=223.33333;
  pointX[60]=180.0;
  pointY[60]=219.99998;
  pointX[61]=176.66666;
  pointY[61]=211.66666;
  pointX[62]=176.66666;
  pointY[62]=211.66666;
  pointX[63]=170.0;
  pointY[63]=194.99998;
  pointX[64]=168.33333;
  pointY[64]=186.66666;
  pointX[65]=168.33333;
  pointY[65]=183.33333;
  pointX[66]=168.33333;
  pointY[66]=183.33333;
  pointX[67]=168.33333;
  pointY[67]=171.66666;
  pointX[68]=168.33333;
  pointY[68]=171.66666;
  pointX[69]=170.0;
  pointY[69]=151.66666;
  pointX[70]=175.0;
  pointY[70]=130.0;
  pointX[71]=175.0;
  pointY[71]=130.0;
  pointX[72]=183.33333;
  pointY[72]=111.666664;
  pointX[73]=190.0;
  pointY[73]=98.33333;
  pointX[74]=199.99998;
  pointY[74]=76.666664;
  pointX[75]=199.99998;
  pointY[75]=76.666664;
  pointX[76]=208.33333;
  pointY[76]=68.33333;
  pointX[77]=214.99998;
  pointY[77]=63.333332;
  pointX[78]=214.99998;
  pointY[78]=63.333332;
  pointX[79]=228.33333;
  pointY[79]=59.999996;
  pointX[80]=238.33333;
  pointY[80]=59.999996;
  pointX[81]=238.33333;
  pointY[81]=59.999996;
  pointX[82]=258.3333;
  pointY[82]=58.333332;
  pointX[83]=268.3333;
  pointY[83]=61.666664;
  pointX[84]=278.3333;
  pointY[84]=63.333332;
  pointX[85]=290.0;
  pointY[85]=70.0;
  pointX[86]=290.0;
  pointY[86]=70.0;
  pointX[87]=295.0;
  pointY[87]=78.33333;
  pointX[88]=303.3333;
  pointY[88]=86.666664;
  pointX[89]=308.3333;
  pointY[89]=95.0;
  pointX[90]=315.0;
  pointY[90]=103.33333;
  pointX[91]=316.66666;
  pointY[91]=113.33333;
  pointX[92]=318.3333;
  pointY[92]=118.33333;
  pointX[93]=318.3333;
  pointY[93]=118.33333;
  pointX[94]=318.3333;
  pointY[94]=128.33333;
  pointX[95]=318.3333;
  pointY[95]=130.0;
  pointX[96]=313.3333;
  pointY[96]=133.33333;
  pointX[97]=313.3333;
  pointY[97]=133.33333;
  x[0]=113.33333;
  y[0]=61.666664;
  w[0]=93.33333;
  h[0]=56.666664;
  x[1]=234.99998;
  y[1]=133.33333;
  w[1]=13.3333435;
  h[1]=15.0;
  x[2]=298.3333;
  y[2]=173.33333;
  w[2]=28.333344;
  h[2]=28.333328;
  x[3]=393.3333;
  y[3]=226.66666;
  w[3]=3.3333435;
  h[3]=10.0;
  x[4]=439.99997;
  y[4]=320.0;
  w[4]=-278.3333;
  h[4]=-141.66667;
  x[5]=145.0;
  y[5]=183.33333;
  w[5]=146.66666;
  h[5]=103.33333;
  x[6]=133.333