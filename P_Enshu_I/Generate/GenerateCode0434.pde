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
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[0][0]=268.3333;
  vertexY[0][0]=128.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[1][0]=291.66666;
  vertexY[1][0]=143.33333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[2][0]=809.99994;
  vertexY[2][0]=378.3333;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[3][0]=466.66666;
  vertexY[3][0]=266.66666;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[4][0]=741.6666;
  vertexY[4][0]=438.3333;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[5][0]=814.99994;
  vertexY[5][0]=509.99997;
  vertexX[6][0]=65.0;
  vertexY[6][0]=206.66666;
  vertexMoveFlag[0]=1;
  vertexMoveFlag[1]=1;
  vertexMoveFlag[2]=1;
  vertexMoveFlag[3]=1;
  vertexMoveFlag[4]=1;
  vertexMoveFlag[5]=1;
  vertexFillFlag[0]=1;
  vertexFillFlag[1]=1;
  vertexFillFlag[2]=1;
  vertexFillFlag[3]=1;
  vertexFillFlag[4]=1;
  vertexFillFlag[5]=1;
  pointX[0]=383.3333;
  pointY[0]=188.33333;
  pointX[1]=404.99997;
  pointY[1]=209.99998;
  pointX[2]=404.99997;
  pointY[2]=209.99998;
  pointX[3]=413.3333;
  pointY[3]=229.99998;
  pointX[4]=409.99997;
  pointY[4]=244.99998;
  pointX[5]=394.99997;
  pointY[5]=251.66666;
  pointX[6]=368.3333;
  pointY[6]=256.66666;
  pointX[7]=331.66666;
  pointY[7]=260.0;
  pointX[8]=313.3333;
  pointY[8]=260.0;
  pointX[9]=285.0;
  pointY[9]=258.3333;
  pointX[10]=268.3333;
  pointY[10]=254.99998;
  pointX[11]=261.66666;
  pointY[11]=246.66666;
  pointX[12]=261.66666;
  pointY[12]=229.99998;
  pointX[13]=261.66666;
  pointY[13]=229.99998;
  pointX[14]=323.3333;
  pointY[14]=178.33333;
  pointX[15]=341.66666;
  pointY[15]=176.66666;
  pointX[16]=341.66666;
  pointY[16]=176.66666;
  pointX[17]=408.3333;
  pointY[17]=194.99998;
  pointX[18]=421.66666;
  pointY[18]=214.99998;
  pointX[19]=426.66666;
  pointY[19]=234.99998;
  pointX[20]=424.99997;
  pointY[20]=246.66666;
  pointX[21]=413.3333;
  pointY[21]=253.33333;
  pointX[22]=413.3333;
  pointY[22]=253.33333;
  pointX[23]=386.66666;
  pointY[23]=254.99998;
  pointX[24]=383.3333;
  pointY[24]=251.66666;
  pointX[25]=383.3333;
  pointY[25]=246.66666;
  pointX[26]=386.66666;
  pointY[26]=241.66666;
  pointX[27]=394.99997;
  pointY[27]=238.33333;
  pointX[28]=398.3333;
  pointY[28]=238.33333;
  pointX[29]=403.3333;
  pointY[29]=238.33333;
  pointX[30]=403.3333;
  pointY[30]=238.33333;
  pointX[31]=406.66666;
  pointY[31]=258.3333;
  pointX[32]=401.66666;
  pointY[32]=266.66666;
  pointX[33]=371.66666;
  pointY[33]=273.3333;
  pointX[34]=345.0;
  pointY[34]=270.0;
  pointX[35]=345.0;
  pointY[35]=270.0;
  pointX[36]=311.66666;
  pointY[36]=254.99998;
  pointX[37]=303.3333;
  pointY[37]=243.33333;
  pointX[38]=303.3333;
  pointY[38]=243.33333;
  pointX[39]=305.0;
  pointY[39]=221.66666;
  pointX[40]=320.0;
  pointY[40]=216.66666;
  pointX[41]=348.3333;
  pointY[41]=223.33333;
  pointX[42]=368.3333;
  pointY[42]=231.66666;
  pointX[43]=368.3333;
  pointY[43]=231.66666;
  pointX[44]=434.99997;
  pointY[44]=293.3333;
  pointX[45]=436.66666;
  pointY[45]=305.0;
  pointX[46]=436.66666;
  pointY[46]=308.3333;
  pointX[47]=436.66666;
  pointY[47]=308.3333;
  pointX[48]=414.99997;
  pointY[48]=305.0;
  pointX[49]=389.99997;
  pointY[49]=293.3333;
  pointX[50]=389.99997;
  pointY[50]=293.3333;
  pointX[51]=371.66666;
  pointY[51]=276.66666;
  pointX[52]=375.0;
  pointY[52]=260.0;
  pointX[53]=375.0;
  pointY[53]=260.0;
  pointX[54]=406.66666;
  pointY[54]=260.0;
  pointX[55]=416.66666;
  pointY[55]=265.0;
  pointX[56]=419.99997;
  pointY[56]=270.0;
  pointX[57]=419.99997;
  pointY[57]=270.0;
  pointX[58]=413.3333;
  pointY[58]=278.3333;
  pointX[59]=413.3333;
  pointY[59]=278.3333;
  pointX[60]=371.66666;
  pointY[60]=275.0;
  pointX[61]=335.0;
  pointY[61]=256.66666;
  pointX[62]=326.66666;
  pointY[62]=251.66666;
  pointX[63]=321.66666;
  pointY[63]=241.66666;
  pointX[64]=321.66666;
  pointY[64]=233.33333;
  pointX[65]=331.66666;
  pointY[65]=228.33333;
  pointX[66]=350.0;
  pointY[66]=224.99998;
  pointX[67]=366.66666;
  pointY[67]=228.33333;
  pointX[68]=366.66666;
  pointY[68]=228.33333;
  pointX[69]=391.66666;
  pointY[69]=256.66666;
  pointX[70]=391.66666;
  pointY[70]=268.3333;
  pointX[71]=383.3333;
  pointY[71]=276.66666;
  pointX[72]=370.0;
  pointY[72]=280.0;
  pointX[73]=358.3333;
  pointY[73]=278.3333;
  pointX[74]=353.3333;
  pointY[74]=276.66666;
  pointX[75]=353.3333;
  pointY[75]=276.66666;
  pointX[76]=346.66666;
  pointY[76]=260.0;
  pointX[77]=346.66666;
  pointY[77]=251.66666;
  pointX[78]=353.3333;
  pointY[78]=246.66666;
  pointX[79]=371.66666;
  pointY[79]=244.99998;
  pointX[80]=371.66666;
  pointY[80]=244.99998;
  pointX[81]=388.3333;
  pointY[81]=265.0;
  pointX[82]=393.3333;
  pointY[82]=276.66666;
  pointX[83]=394.99997;
  pointY[83]=285.0;
  pointX[84]=384.99997;
  pointY[84]=291.66666;
  pointX[85]=378.3333;
  pointY[85]=293.3333;
  pointX[86]=358.3333;
  pointY[86]=296.66666;
  pointX[87]=358.3333;
  pointY[87]=296.66666;
  pointX[88]=316.66666;
  pointY[88]=281.66666;
  pointX[89]=316.66666;
  pointY[89]=281.66666;
  pointX[90]=285.0;
  pointY[90]=261.66666;
  lineX1[0]=315.0;
  lineY1[0]=351.66666;
  lineX2[0]=316.66666;
  lineY2[0]=403.3333;
  lineX1[1]=293.3333;
  lineY1[1]=398.3333;
  lineX2[1]=321.66666;
  lineY2[1]=414.99997;
  lineX1[2]=513.3333;
  lineY1[2]=434.99997;
  lineX2[2]=570.0;
  lineY2[2]=404.99997;
  lineX1[3]=625.0;
  lineY1[3]=296.66666;
  lineX2[3]=615.0;
  lineY2[3]=290.0;
  lineX1[4]=590.0;
  lineY1[4]=290.0;
  lineX2[4]=565.0;
  lineY2[4]=313.3333;
  lineX1[5]=378.3333;
  lineY1[5]=421.66666;
  lineX2[5]=371.66666;
  lineY2[5]=441.66666;
  lineX1[6]=313.3333;
  lineY1[6]=406.66666;
  lineX2[6]=356.66666;
  lineY2[6]=384.99997;
  lineX1[7]=518.3333;
  lineY1[7]=361.66666;
  lineX2[7]=586.6666;
  lineY2[7]=449.99997;
  lineX1[8]=541.6666;
  lineY1[8]=443.3333;
  lineX2[8]=328.3333;
  lineY2[8]=330.0;
  lineX1[9]=293.3333;
  lineY1[9]=288.3333;
  lineX2[9]=293.3333;
  lineY2[9]=290.0;
  lineX1[10]=424.99997;
  lineY1[10]=381.66666;
  lineX2[10]=528.3333;
  lineY2[10]=439.99997;
  lineX1[11]=683.3333;
  lineY1[11]=444.99997;
  lineX2[11]=725.0;
  lineY2[11]=463.3333;
  lineX1[12]=563.3333;
  lineY1[12]=483.3333;
  lineX2[12]=261.66666;
  lineY2[12]=394.99997;
  lineX1[13]=280.0;
  lineY1[13]=353.3333;
  lineX2[13]=336.66666;
  lineY2[13]=355.0;
  x[1]=466.66666;
  y[1]=80.0;
  w[1]=10.0;
  h[1]=8.333328;
  x[2]=501.66666;
  y[2]=103.33333;
  w[2]=0.0;
  h[2]=0.0;
  x[3]=808.3333;
  y[3]=280.0;
  w[3]=1.666626;
  h[3]=20.0;
  x[4]=793.3333;
  y[4]=321.66666;
  w[4]=-51.666687;
  h[4]=11.6666565;
  x[5]=656.6666;
  y[5]=286.66666;
  w[5]=-51.666626;
  h[5]=-48.33333;
  x[6]=541.6666;
  y[6]=171.66666;
  w[6]=-5.0;
  h[6]=-6.6666565;
  x[7]=575.0;
  y[7]=126.666664;
  w[7]=40.0;
  h[7]=-5.0;
  x[8]=700.0;
  y[8]=119.99999;
  w[8]=58.333313;
  h[8]=70.00001;
  x[9]=803.3333;
  y[9]=231.66666;
  w[9]=60.0;
  h[9]=90.0;
  x[10]=869.99994;
  y[10]=326.66666;
  w[10]=-65.0;
  h[10]=36.666656;
  x[11]=706.6666;
  y[11]=341.66666;
  w[11]=-90.0;
  h[11]=0.0;
  x[12]=586.6666;
  y[12]=343.3333;
  w[12]=-28.333313;
  h[12]=1.666687;
  x[13]=518.3333;
  y[13]=278.3333;
  w[13]=28.333313;
  h[13]=-24.999985;
  x[14]=743.3333;
  y[14]=173.33333;
  w[14]=6.666687;
  h[14]=-5.0;
  x[15]=779.99994;
  y[15]=145.0;
  w[15]=20.0;
  h[15]=-18.333336;
  x[16]=854.99994;
  y[16]=85.0;
  w[16]=0.0;
  h[16]=0.0;
  x[17]=856.6666;
  y[17]=80.0;
  w[17]=-68.33331;
  h[17]=11.666664;
  x[18]=688.3333;
  y[18]=93.33333;
  w[18]=-68.33331;
  h[18]=13.333336;
  x[19]=520.0;
  y[19]=70.0;
  w[19]=-145.0;
  h[19]=-60.0;
  x[20]=356.66666;
  y[20]=-6.6666665;
  w[20]=-31.666656;
  h[20]=-4.9999995;
  ellipX[0]=185.0;
  ellipY[0]=73.33333;
  ellipR1[0]=198.33333;
  ellipR2[0]=90.0;
  ellipX[1]=261.66666;
  ellipY[1]=123.33333;
  ellipR1[1]=295.0;
  ellipR2[1]=151.66666;
  ellipX[2]=328.3333;
  ellipY[2]=178.33333;
  ellipR1[2]=348.3333;
  ellipR2[2]=253.33333;
  ellipX[3]=383.3333;
  ellipY[3]=254.99998;
  ellipR1[3]=429.99997;
  ellipR2[3]=275.0;
  ellipX[4]=463.3333;
  ellipY[4]=288.3333;
  ellipR1[4]=504.99997;
  ellipR2[4]=301.66666;
  ellipX[5]=530.0;
  ellipY[5]=236.66666;
  ellipR1[5]=616.6666;
  ellipR2[5]=300.0;
  ellipX[6]=691.6666;
  ellipY[6]=78.33333;
  ellipR1[6]=721.6666;
  ellipR2[6]=126.666664;
  ellipX[7]=740.0;
  ellipY[7]=41.666664;
  ellipR1[7]=740.0;
  ellipR2[7]=48.333332;
  ellipX[8]=706.6666;
  ellipY[8]=124.99999;
  ellipR1[8]=738.3333;
  ellipR2[8]=231.66666;
  ellipX[9]=646.6666;
  ellipY[9]=243.33333;
  ellipR1[9]=698.3333;
  ellipR2[9]=323.3333;
  ellipX[10]=456.66666;
  ellipY[10]=228.33333;
  ellipR1[10]=643.3333;
  ellipR2[10]=326.66666;
  ellipX[11]=333.3333;
  ellipY[11]=158.33333;
  ellipR1[11]=336.66666;
  ellipR2[11]=160.0;
  ellipX[12]=271.66666;
  ellipY[12]=108.33333;
  ellipR1[12]=293.3333;
  ellipR2[12]=114.99999;
  ellipX[13]=258.3333;
  ellipY[13]=96.666664;
  ellipR1[13]=288.3333;
  ellipR2[13]=128.33333;
  ellipX[14]=391.66666;
  ellipY[14]=203.33333;
  ellipR1[14]=479.99997;
  ellipR2[14]=278.3333;
  ellipX[15]=521.6666;
  ellipY[15]=301.66666;
  ellipR1[15]=581.6666;
  ellipR2[15]=370.0;
  ellipX[16]=551.6666;
  ellipY[16]=361.66666;
  ellipR1[16]=588.3333;
  ellipR2[16]=368.3333;
  ellipX[17]=376.66666;
  ellipY[17]=328.3333;
  ellipR1[17]=429.99997;
  ellipR2[17]=336.66666;
  strokeFlag[0]=1;
  strokeFlag[1]=1;
  strokeFlag[2]=1;
  strokeFlag[3]=1;
  strokeFlag[4]=1;
  strokeFlag[5]=1;
  strokeFlag[6]=1;
  strokeFlag[7]=1;
  strokeFlag[8]=1;
  strokeFlag[9]=1;
  strokeFlag[10]=1;
  strokeFlag[11]=1;
  strokeFlag[12]=1;
  strokeFlag[13]=1;
  strokeFlag[14]=1;
  strokeFlag[15]=1;
  strokeFlag[16]=1;
  strokeFlag[17]=1;
  strokeFlag[18]=1;
  strokeFlag[19]=1;
  strokeFlag[20]=1;
  strokeFlag[21]=1;
  strokeFlag[22]=1;
  strokeFlag[23]=1;
  strokeFlag[24]=1;
  strokeFlag[25]=1;
  strokeFlag[26]=1;
  strokeFlag[27]=1;
  strokeFlag[28]=1;
  strokeFlag[29]=1;
  strokeFlag[30]=1;
  strokeFlag[31]=1;
  strokeFlag[32]=1;
  strokeFlag[33]=1;
  strokeFlag[34]=1;
  strokeFlag[35]=1;
  strokeFlag[36]=1;
  strokeFlag[37]=1;
  strokeFlag[38]=1;
  strokeFlag[39]=1;
  strokeFlag[40]=1;
  strokeFlag[41]=1;
  strokeFlag[42]=1;
  strokeFlag[43]=1;
  strokeFlag[44]=1;
  strokeFlag[45]=1;
  strokeFlag[46]=1;
  strokeFlag[47]=1;
  strokeFlag[48]=1;
  strokeFlag[49]=1;
  strokeFlag[50]=1;
  strokeFlag[51]=1;
  strokeFlag[52]=1;
  strokeFlag[53]=1;
  strokeFlag[54]=1;
  strokeFlag[55]=1;
  strokeFlag[56]=1;
  strokeFlag[57]=1;
  strokeFlag[58]=1;
  strokeFlag[59]=1;
  strokeFlag[60]=1;
  strokeFlag[61]=1;
  strokeFlag[62]=1;
  strokeFlag[63]=1;
  strokeFlag[64]=1;
  strokeFlag[65]=1;
  strokeFlag[66]=1;
  strokeFlag[67]=1;
  strokeFlag[68]=1;
  strokeFlag[69]=1;
  strokeFlag[70]=1;
  strokeFlag[71]=1;
  strokeFlag[72]=1;
  strokeFlag[73]=1;
  strokeFlag[74]=1;
  strokeFlag[75]=1;
  strokeFlag[76]=1;
  stroke