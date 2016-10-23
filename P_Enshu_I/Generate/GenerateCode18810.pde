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
  pointX[0]=113.33333;
  pointY[0]=26.666666;
  pointX[1]=135.0;
  pointY[1]=28.333332;
  pointX[2]=150.0;
  pointY[2]=29.999998;
  pointX[3]=155.0;
  pointY[3]=31.666666;
  pointX[4]=166.66666;
  pointY[4]=31.666666;
  pointX[5]=166.66666;
  pointY[5]=31.666666;
  pointX[6]=175.0;
  pointY[6]=35.0;
  pointX[7]=183.33333;
  pointY[7]=38.333332;
  pointX[8]=191.66666;
  pointY[8]=43.333332;
  pointX[9]=204.99998;
  pointY[9]=46.666664;
  pointX[10]=204.99998;
  pointY[10]=46.666664;
  pointX[11]=226.66666;
  pointY[11]=54.999996;
  pointX[12]=226.66666;
  pointY[12]=54.999996;
  pointX[13]=244.99998;
  pointY[13]=61.666664;
  pointX[14]=244.99998;
  pointY[14]=61.666664;
  pointX[15]=258.3333;
  pointY[15]=73.33333;
  pointX[16]=265.0;
  pointY[16]=80.0;
  pointX[17]=270.0;
  pointY[17]=83.33333;
  pointX[18]=278.3333;
  pointY[18]=95.0;
  pointX[19]=293.3333;
  pointY[19]=113.33333;
  pointX[20]=298.3333;
  pointY[20]=123.33333;
  pointX[21]=301.66666;
  pointY[21]=133.33333;
  pointX[22]=303.3333;
  pointY[22]=141.66666;
  pointX[23]=305.0;
  pointY[23]=148.33333;
  pointX[24]=305.0;
  pointY[24]=151.66666;
  pointX[25]=305.0;
  pointY[25]=158.33333;
  pointX[26]=305.0;
  pointY[26]=158.33333;
  pointX[27]=301.66666;
  pointY[27]=170.0;
  pointX[28]=298.3333;
  pointY[28]=175.0;
  pointX[29]=290.0;
  pointY[29]=188.33333;
  pointX[30]=281.66666;
  pointY[30]=194.99998;
  pointX[31]=276.66666;
  pointY[31]=199.99998;
  pointX[32]=271.66666;
  pointY[32]=203.33333;
  pointX[33]=268.3333;
  pointY[33]=203.33333;
  pointX[34]=260.0;
  pointY[34]=204.99998;
  pointX[35]=251.66666;
  pointY[35]=204.99998;
  pointX[36]=251.66666;
  pointY[36]=204.99998;
  pointX[37]=239.99998;
  pointY[37]=201.66666;
  pointX[38]=238.33333;
  pointY[38]=196.66666;
  pointX[39]=238.33333;
  pointY[39]=190.0;
  pointX[40]=248.33333;
  pointY[40]=168.33333;
  pointX[41]=248.33333;
  pointY[41]=168.33333;
  pointX[42]=290.0;
  pointY[42]=148.33333;
  pointX[43]=320.0;
  pointY[43]=146.66666;
  pointX[44]=358.3333;
  pointY[44]=150.0;
  pointX[45]=381.66666;
  pointY[45]=158.33333;
  pointX[46]=389.99997;
  pointY[46]=163.33333;
  pointX[47]=391.66666;
  pointY[47]=166.66666;
  pointX[48]=391.66666;
  pointY[48]=166.66666;
  pointX[49]=386.66666;
  pointY[49]=183.33333;
  pointX[50]=370.0;
  pointY[50]=196.66666;
  pointX[51]=358.3333;
  pointY[51]=198.33333;
  pointX[52]=350.0;
  pointY[52]=198.33333;
  pointX[53]=353.3333;
  pointY[53]=196.66666;
  pointX[54]=363.3333;
  pointY[54]=193.33333;
  pointX[55]=363.3333;
  pointY[55]=193.33333;
  pointX[56]=394.99997;
  pointY[56]=191.66666;
  pointX[57]=413.3333;
  pointY[57]=194.99998;
  pointX[58]=418.3333;
  pointY[58]=196.66666;
  pointX[59]=418.3333;
  pointY[59]=198.33333;
  pointX[60]=411.66666;
  pointY[60]=199.99998;
  pointX[61]=401.66666;
  pointY[61]=206.66666;
  pointX[62]=363.3333;
  pointY[62]=213.33333;
  pointX[63]=348.3333;
  pointY[63]=213.33333;
  pointX[64]=305.0;
  pointY[64]=213.33333;
  pointX[65]=258.3333;
  pointY[65]=206.66666;
  pointX[66]=223.33333;
  pointY[66]=198.33333;
  pointX[67]=203.33333;
  pointY[67]=191.66666;
  pointX[68]=198.33333;
  pointY[68]=188.33333;
  pointX[69]=198.33333;
  pointY[69]=188.33333;
  pointX[70]=204.99998;
  pointY[70]=158.33333;
  pointX[71]=206.66666;
  pointY[71]=150.0;
  pointX[72]=208.33333;
  pointY[72]=146.66666;
  pointX[73]=209.99998;
  pointY[73]=140.0;
  pointX[74]=209.99998;
  pointY[74]=136.66666;
  pointX[75]=209.99998;
  pointY[75]=135.0;
  pointX[76]=209.99998;
  pointY[76]=131.66666;
  pointX[77]=208.33333;
  pointY[77]=126.666664;
  pointX[78]=199.99998;
  pointY[78]=114.99999;
  pointX[79]=196.66666;
  pointY[79]=108.33333;
  pointX[80]=196.66666;
  pointY[80]=108.33333;
  pointX[81]=191.66666;
  pointY[81]=98.33333;
  pointX[82]=188.33333;
  pointY[82]=93.33333;
  pointX[83]=185.0;
  pointY[83]=88.33333;
  pointX[84]=183.33333;
  pointY[84]=85.0;
  pointX[85]=183.33333;
  pointY[85]=85.0;
  pointX[86]=181.66666;
  pointY[86]=80.0;
  pointX[87]=181.66666;
  pointY[87]=80.0;
  pointX[88]=178.33333;
  pointY[88]=76.666664;
  pointX[89]=178.33333;
  pointY[89]=76.666664;
  pointX[90]=170.0;
  pointY[90]=71.666664;
  pointX[91]=161.66666;
  pointY[91]=68.33333;
  pointX[92]=155.0;
  pointY[92]=65.0;
  pointX[93]=148.33333;
  pointY[93]=59.999996;
  pointX[94]=148.33333;
  pointY[94]=59.999996;
  pointX[95]=140.0;
  pointY[95]=56.666664;
  pointX[96]=140.0;
  pointY[96]=56.666664;
  pointX[97]=140.0;
  pointY[97]=56.666664;
  pointX[98]=140.0;
  pointY[98]=56.666664;
  pointX[99]=140.0;
  pointY[99]=56.666664;
  pointX[100]=140.0;
  pointY[100]=56.666664;
  pointX[101]=140.0;
  pointY[101]=56.666664;
  pointX[102]=140.0;
  pointY[102]=56.666664;
  pointX[103]=104.99999;
  pointY[103]=35.0;
  pointX[104]=104.99999;
  pointY[104]=35.0;
  pointX[105]=-5.0;
  pointY[105]=11.666666;
  pointX[106]=-10.0;
  pointY[106]=11.666666;
  pointX[107]=-13.333333;
  pointY[107]=13.333333;
  pointX[108]=-14.999999;
  pointY[108]=14.999999;
  pointX[109]=-16.666666;
  pointY[109]=14.999999;
  pointX[110]=-18.333332;
  pointY[110]=16.666666;
  pointX[111]=-21.666666;
  pointY[111]=18.333332;
  pointX[112]=-23.333332;
  pointY[112]=20.0;
  pointX[113]=-28.333332;
  pointY[113]=21.666666;
  pointX[114]=-28.333332;
  pointY[114]=21.666666;
  pointX[115]=-38.333332;
  pointY[115]=28.333332;
  pointX[116]=-41.666664;
  pointY[116]=29.999998;
  pointX[117]=-45.0;
  pointY[117]=35.0;
  pointX[118]=-48.333332;
  pointY[118]=38.333332;
  pointX[119]=-51.666664;
  pointY[119]=40.0;
  pointX[120]=-54.999996;
  pointY[120]=43.333332;
  pointX[121]=-58.333332;
  pointY[121]=48.333332;
  pointX[122]=-59.999996;
  pointY[122]=49.999996;
  pointX[123]=-59.999996;
  pointY[123]=49.999996;
  pointX[124]=-66.666664;
  pointY[124]=61.666664;
  pointX[125]=-70.0;
  pointY[125]=66.666664;
  pointX[126]=-70.0;
  pointY[126]=70.0;
  pointX[127]=-70.0;
  pointY[127]=73.33333;
  pointX[128]=-71.666664;
  pointY[128]=78.33333;
  pointX[129]=-73.33333;
  pointY[129]=85.0;
  pointX[130]=-73.33333;
  pointY[130]=88.33333;
  pointX[131]=-73.33333;
  pointY[131]=88.33333;
  pointX[132]=-78.33333;
  pointY[132]=99.99999;
  pointX[133]=-80.0;
  pointY[133]=104.99999;
  pointX[134]=-80.0;
  pointY[134]=114.99999;
  pointX[135]=-81.666664;
  pointY[135]=121.666664;
  pointX[136]=-81.666664;
  pointY[136]=123.33333;
  pointX[137]=-81.666664;
  pointY[137]=128.33333;
  pointX[138]=-85.0;
  pointY[138]=135.0;
  pointX[139]=-85.0;
  pointY[139]=143.33333;
  pointX[140]=-85.0;
  pointY[140]=150.0;
  pointX[141]=-85.0;
  pointY[141]=156.66666;
  pointX[142]=-85.0;
  pointY[142]=168.33333;
  pointX[143]=-85.0;
  pointY[143]=173.33333;
  pointX[144]=-85.0;
  pointY[144]=183.33333;
  pointX[145]=-85.0;
  pointY[145]=183.33333;
  pointX[146]=-80.0;
  pointY[146]=199.99998;
  pointX[147]=-78.33333;
  pointY[147]=211.66666;
  pointX[148]=-76.666664;
  pointY[148]=226.66666;
  pointX[149]=-75.0;
  pointY[149]=239.99998;
  pointX[150]=-71.666664;
  pointY[150]=248.33333;
  pointX[151]=-61.666664;
  pointY[151]=268.3333;
  pointX[152]=-56.666664;
  pointY[152]=273.3333;
  pointX[153]=-48.333332;
  pointY[153]=285.0;
  pointX[154]=-36.666664;
  pointY[154]=291.66666;
  pointX[155]=-14.999999;
  pointY[155]=303.3333;
  pointX[156]=-3.3333333;
  pointY[156]=310.0;
  pointX[157]=23.333332;
  pointY[157]=323.3333;
  pointX[158]=23.333332;
  pointY[158]=323.3333;
  pointX[159]=80.0;
  pointY[159]=346.66666;
  pointX[160]=80.0;
  pointY[160]=346.66666;
  pointX[161]=204.99998;
  pointY[161]=384.99997;
  pointX[162]=233.33333;
  pointY[162]=391.66666;
  pointX[163]=263.3333;
  pointY[163]=394.99997;
  pointX[164]=291.66666;
  pointY[164]=399.99997;
  pointX[165]=291.66666;
  pointY[165]=399.99997;
  pointX[166]=325.0;
  pointY[166]=403.3333;
  pointX[167]=341.66666;
  pointY[167]=403.3333;
  pointX[168]=350.0;
  pointY[168]=403.3333;
  pointX[169]=365.0;
  pointY[169]=403.3333;
  pointX[170]=376.66666;
  pointY[170]=401.66666;
  pointX[171]=399.99997;
  pointY[171]=388.3333;
  pointX[172]=408.3333;
  pointY[172]=381.66666;
  pointX[173]=416.66666;
  pointY[173]=371.66666;
  pointX[174]=426.66666;
  pointY[174]=356.66666;
  pointX[175]=426.66666;
  pointY[175]=356.66666;
  pointX[176]=438.3333;
  pointY[176]=328.3333;
  pointX[177]=438.3333;
  pointY[177]=328.3333;
  pointX[178]=441.66666;
  pointY[178]=281.66666;
  pointX[179]=443.3333;
  pointY[179]=263.3333;
  pointX[180]=443.3333;
  pointY[180]=263.3333;
  pointX[181]=443.3333;
  pointY[181]=263.3333;
  pointX[182]=443.3333;
  pointY[182]=263.3333;
  pointX[183]=389.99997;
  pointY[183]=138.33333;
  pointX[184]=389.99997;
  pointY[184]=138.33333;
  pointX[185]=389.99997;
  pointY[185]=138.33333;
  pointX[186]=345.0;
  pointY[186]=98.33333;
  pointX[187]=325.0;
  pointY[187]=86.666664;
  pointX[188]=325.0;
  pointY[188]=86.666664;
  pointX[189]=296.66666;
  pointY[189]=73.33333;
  pointX[190]=285.0;
  pointY[190]=68.33333;
  pointX[191]=278.3333;
  pointY[191]=68.33333;
  pointX[192]=271.66666;
  pointY[192]=68.33333;
  pointX[193]=268.3333;
  pointY[193]=70.0;
  pointX[194]=268.3333;
  pointY[194]=70.0;
  pointX[195]=266.66666;
  pointY[195]=73.33333;
  pointX[196]=263.3333;
  pointY[196]=75.0;
  moveFlag[0]=1;
  moveFlag[1]=1;
  moveFlag[2]=1;
  moveFlag[3]=1;
  moveFlag[4]=1;
  moveFlag[5]=1;
  moveFlag[6]=1;
  moveFlag[7]=1;
  moveFlag[8]=1;
  moveFlag[9]=1;
  moveFlag[10]=1;
  moveFlag[11]=1;
  moveFlag[12]=1;
  moveFlag[13]=1;
  moveFlag[14]=1;
  moveFlag[15]=1;
  moveFlag[16]=1;
  moveFlag[17]=1;
  moveFlag[18]=1;
  moveFlag[19]=1;
  moveFlag[20]=1;
  moveFlag[21]=1;
  moveFlag[22]=1;
  moveFlag[23]=1;
  moveFlag[24]=1;
  moveFlag[25]=1;
  moveFlag[26]=1;
  moveFlag[27]=1;
  moveFlag[28]=1;
  moveFlag[29]=1;
  moveFlag[30]=1;
  moveFlag[31]=1;
  moveFlag[32]=1;
  moveFlag[33]=1;
  moveFlag[34]=1;
  moveFlag[35]=1;
  moveFlag[36]=1;
  moveFlag[37]=1;
  moveFlag[38]=1;
  moveFlag[39]=1;
  moveFlag[40]=1;
  moveFlag[41]=1;
  moveFlag[42]=1;
  moveFlag[43]=1;
  moveFlag[44]=1;
  moveFlag[45]=1;
  moveFlag[46]=1;
  moveFlag[47]=1;
  moveFlag[48]=1;
  moveFlag[49]=1;
  moveFlag[50]=1;
  moveFlag[51]=1;
  moveFlag[52]=1;
  moveFlag[53]=1;
  moveFlag[54]=1;
  moveFlag[55]=1;
  moveFlag[56]=1;
  moveFlag[57]=1;
  moveFlag[58]=1;
  moveFlag[59]=1;
  moveFlag[60]=1;
  moveFlag[61]=1;
  moveFlag[62]=1;
  moveFlag[63]=1;
  moveFlag[64]=1;
  moveFlag[65]=1;
  moveFlag[66]=1;
  moveFlag[67]=1;
  moveFlag[68]=1;
  moveFlag[69]=1;
  moveFlag[70]=1;
  moveFlag[71]=1;
  moveFlag[72]=1;
  moveFlag[73]=1;
  moveFlag[74]=1;
  moveFlag[75]=1;
  moveFlag[76]=1;
  moveFlag[77]=1;
  moveFlag[78]=1;
  moveFlag[79]=1;
  moveFlag[80]=1;
  moveFlag[81]=1;
  moveFlag[82]=1;
  moveFlag[83]=1;
  moveFlag[84]=1;
  moveFlag[85]=1;
  moveFlag[86]=1;
  moveFlag[87]=1;
  moveFlag[88]=1;
  moveFlag[89]=1;
  moveFlag[90]=1;
  moveFlag[91]=1;
  moveFlag[92]=1;
  moveFlag[93]=1;
  moveFlag[94]=1;
  moveFlag[95]=1;
  moveFlag[96]=1;
  moveFlag[97]=1;
  moveFlag[98]=1;
  moveFlag[99]=1;
  moveFlag[100]=1;
  moveFlag[101]=1;
  moveFlag[102]=1;
  moveFlag[103]=1;
  moveFlag[104]=1;
  moveFlag[105]=1;
  moveFlag[106]=1;
  moveFlag[107]=1;
  moveFlag[108]=1;
  moveFlag[109]=1;
  moveFlag[110]=1;
  moveFlag[111]=1;
  moveFlag[112]=1;
  moveFlag[113]=1;
  moveFlag[114]=1;
  moveFlag[115]=1;
  moveFlag[116]=1;
  moveFlag[117]=1;
  moveFlag[118]=1;
  moveFlag[119]=1;
  moveFlag[120]=1;
  moveFlag[121]=1;
  moveFlag[122]=1;
  moveFlag[123]=1;
  moveFlag[124]=1;
  moveFlag[125]=1;
  moveFlag[126]=1;
  moveFlag[127]=1;
  moveFlag[128]=1;
  moveFlag[129]=1;
  moveFlag[130]=1;
  moveFlag[131]=1;
  moveFlag[132]=1;
  moveFlag[133]=1;
  moveFlag[134]=1;
  moveFlag[135]=1;
  moveFlag[136]=1;
  moveFlag[137]=1;
  moveFlag[138]=1;
  moveFlag[139]=1;
  moveFlag[140]=1;
  moveFlag[141]=1;
  moveFlag[142]=1;
  moveFlag[143]=1;
  moveFlag[144]=1;
  moveFlag[145]=1;
  moveFlag[146]=1;
  moveFlag[147]=1;
  moveFlag[148]=1;
  moveFlag[149]=1;
  moveFlag[150]=1;
  moveFlag[151]=1;
  moveFlag[152]=1;
  moveFlag[153]=1;
  moveFlag[154]=1;
  moveFlag[155]=1;
  moveFlag[156]=1;
  moveFlag[157]=1;
  moveFlag[158]=1;
  moveFlag[159]=1;
  moveFlag[160]=1;
  moveFlag[161]=1;
  moveFlag[162]=1;
  moveFlag[163]=1;
  moveFlag[164]=1;
  moveFlag[165]=1;
  moveFlag[166]=1;
  moveFlag[167]=1;
  moveFlag[168]=1;
  moveFlag[169]=1;
  moveFlag[170]=1;
  moveFlag[171]=1;
  moveFlag[172]=1;
  moveFlag[173]=1;
  moveFlag[174]=1;
  moveFlag[175]=1;
  moveFlag[176]=1;
  moveFlag[177]=1;
  moveFlag[178]=1;
  moveFlag[179]=1;
  moveFlag[180]=1;
  moveFlag[181]=1;
  moveFlag[182]=1;
  moveFlag[183]=1;
  moveFlag[184]=1;
  moveFlag[185]=1;
  moveFlag[186]=1;
  moveFlag[187]=1;
  moveFlag[188]=1;
  moveFlag[189]=1;
  moveFlag[190]=1;
  moveFlag[191]=1;
  moveFlag[192]=1;
  moveFlag[193]=1;
  moveFlag[194]=1;
  moveFlag[195]=1;
  moveFlag[196]=1;
  vertexX[0][0]=595.0;
  vertexY[0][0]=161.66666;
  vertexX[0][0]=595.0;
  vertexY[0][0]=161.66666;
  vertexX[0][0]=595.0;
  vertexY[0][0]=161.66666;
  vertexX[0][0]=595.0;
  vertexY[0][0]=161.66666;
  vertexX[0][0]=595.0;
  vertexY[0][0]=161.66666;
  vertexX[0][0]=595.0;
  vertexY[0][0]=161.