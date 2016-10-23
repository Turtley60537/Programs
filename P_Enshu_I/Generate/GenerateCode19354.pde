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
  pointX[0]=185.0;
  pointY[0]=80.0;
  pointX[1]=185.0;
  pointY[1]=80.0;
  pointX[2]=185.0;
  pointY[2]=86.666664;
  pointX[3]=185.0;
  pointY[3]=90.0;
  pointX[4]=185.0;
  pointY[4]=90.0;
  pointX[5]=176.66666;
  pointY[5]=108.33333;
  pointX[6]=171.66666;
  pointY[6]=113.33333;
  pointX[7]=171.66666;
  pointY[7]=113.33333;
  pointX[8]=153.33333;
  pointY[8]=119.99999;
  pointX[9]=151.66666;
  pointY[9]=119.99999;
  pointX[10]=150.0;
  pointY[10]=118.33333;
  pointX[11]=150.0;
  pointY[11]=118.33333;
  pointX[12]=150.0;
  pointY[12]=106.666664;
  pointX[13]=155.0;
  pointY[13]=98.33333;
  pointX[14]=160.0;
  pointY[14]=91.666664;
  pointX[15]=166.66666;
  pointY[15]=86.666664;
  pointX[16]=173.33333;
  pointY[16]=83.33333;
  pointX[17]=178.33333;
  pointY[17]=83.33333;
  pointX[18]=185.0;
  pointY[18]=86.666664;
  pointX[19]=193.33333;
  pointY[19]=93.33333;
  pointX[20]=199.99998;
  pointY[20]=111.666664;
  pointX[21]=201.66666;
  pointY[21]=119.99999;
  pointX[22]=201.66666;
  pointY[22]=119.99999;
  pointX[23]=201.66666;
  pointY[23]=153.33333;
  pointX[24]=196.66666;
  pointY[24]=165.0;
  pointX[25]=196.66666;
  pointY[25]=165.0;
  pointX[26]=186.66666;
  pointY[26]=171.66666;
  pointX[27]=186.66666;
  pointY[27]=171.66666;
  pointX[28]=186.66666;
  pointY[28]=171.66666;
  pointX[29]=183.33333;
  pointY[29]=161.66666;
  pointX[30]=183.33333;
  pointY[30]=161.66666;
  pointX[31]=203.33333;
  pointY[31]=143.33333;
  pointX[32]=203.33333;
  pointY[32]=143.33333;
  pointX[33]=341.66666;
  pointY[33]=104.99999;
  pointX[34]=398.3333;
  pointY[34]=103.33333;
  pointX[35]=398.3333;
  pointY[35]=103.33333;
  pointX[36]=473.3333;
  pointY[36]=113.33333;
  pointX[37]=481.66666;
  pointY[37]=118.33333;
  pointX[38]=489.99997;
  pointY[38]=135.0;
  pointX[39]=494.99997;
  pointY[39]=155.0;
  pointX[40]=494.99997;
  pointY[40]=181.66666;
  pointX[41]=486.66666;
  pointY[41]=204.99998;
  pointX[42]=471.66666;
  pointY[42]=228.33333;
  pointX[43]=431.66666;
  pointY[43]=251.66666;
  pointX[44]=423.3333;
  pointY[44]=253.33333;
  pointX[45]=409.99997;
  pointY[45]=253.33333;
  pointX[46]=398.3333;
  pointY[46]=246.66666;
  pointX[47]=393.3333;
  pointY[47]=233.33333;
  pointX[48]=391.66666;
  pointY[48]=224.99998;
  pointX[49]=391.66666;
  pointY[49]=224.99998;
  pointX[50]=391.66666;
  pointY[50]=191.66666;
  pointX[51]=391.66666;
  pointY[51]=191.66666;
  pointX[52]=406.66666;
  pointY[52]=178.33333;
  pointX[53]=423.3333;
  pointY[53]=178.33333;
  pointX[54]=429.99997;
  pointY[54]=183.33333;
  pointX[55]=434.99997;
  pointY[55]=198.33333;
  pointX[56]=434.99997;
  pointY[56]=198.33333;
  pointX[57]=431.66666;
  pointY[57]=238.33333;
  pointX[58]=426.66666;
  pointY[58]=248.33333;
  pointX[59]=416.66666;
  pointY[59]=263.3333;
  pointX[60]=399.99997;
  pointY[60]=266.66666;
  pointX[61]=376.66666;
  pointY[61]=266.66666;
  pointX[62]=345.0;
  pointY[62]=253.33333;
  pointX[63]=310.0;
  pointY[63]=234.99998;
  pointX[64]=270.0;
  pointY[64]=204.99998;
  pointX[65]=260.0;
  pointY[65]=190.0;
  pointX[66]=256.66666;
  pointY[66]=178.33333;
  pointX[67]=256.66666;
  pointY[67]=178.33333;
  pointX[68]=256.66666;
  pointY[68]=173.33333;
  pointX[69]=261.66666;
  pointY[69]=173.33333;
  pointX[70]=270.0;
  pointY[70]=173.33333;
  pointX[71]=275.0;
  pointY[71]=173.33333;
  pointX[72]=276.66666;
  pointY[72]=173.33333;
  pointX[73]=278.3333;
  pointY[73]=173.33333;
  pointX[74]=290.0;
  pointY[74]=181.66666;
  pointX[75]=293.3333;
  pointY[75]=185.0;
  pointX[76]=301.66666;
  pointY[76]=188.33333;
  pointX[77]=313.3333;
  pointY[77]=191.66666;
  pointX[78]=331.66666;
  pointY[78]=193.33333;
  pointX[79]=346.66666;
  pointY[79]=191.66666;
  pointX[80]=356.66666;
  pointY[80]=185.0;
  pointX[81]=356.66666;
  pointY[81]=185.0;
  pointX[82]=366.66666;
  pointY[82]=175.0;
  pointX[83]=365.0;
  pointY[83]=175.0;
  pointX[84]=348.3333;
  pointY[84]=175.0;
  pointX[85]=348.3333;
  pointY[85]=175.0;
  pointX[86]=330.0;
  pointY[86]=178.33333;
  pointX[87]=320.0;
  pointY[87]=185.0;
  pointX[88]=310.0;
  pointY[88]=193.33333;
  pointX[89]=306.66666;
  pointY[89]=203.33333;
  pointX[90]=306.66666;
  pointY[90]=218.33333;
  pointX[91]=313.3333;
  pointY[91]=231.66666;
  pointX[92]=323.3333;
  pointY[92]=241.66666;
  pointX[93]=323.3333;
  pointY[93]=241.66666;
  pointX[94]=355.0;
  pointY[94]=256.66666;
  pointX[95]=355.0;
  pointY[95]=256.66666;
  pointX[96]=376.66666;
  pointY[96]=268.3333;
  pointX[97]=380.0;
  pointY[97]=268.3333;
  pointX[98]=380.0;
  pointY[98]=270.0;
  pointX[99]=378.3333;
  pointY[99]=273.3333;
  pointX[100]=366.66666;
  pointY[100]=281.66666;
  pointX[101]=358.3333;
  pointY[101]=285.0;
  pointX[102]=331.66666;
  pointY[102]=296.66666;
  pointX[103]=306.66666;
  pointY[103]=303.3333;
  pointX[104]=293.3333;
  pointY[104]=305.0;
  pointX[105]=270.0;
  pointY[105]=306.66666;
  pointX[106]=254.99998;
  pointY[106]=306.66666;
  pointX[107]=254.99998;
  pointY[107]=306.66666;
  pointX[108]=239.99998;
  pointY[108]=303.3333;
  pointX[109]=234.99998;
  pointY[109]=295.0;
  pointX[110]=234.99998;
  pointY[110]=295.0;
  pointX[111]=233.33333;
  pointY[111]=263.3333;
  pointX[112]=236.66666;
  pointY[112]=243.33333;
  pointX[113]=236.66666;
  pointY[113]=243.33333;
  pointX[114]=236.66666;
  pointY[114]=243.33333;
  pointX[115]=236.66666;
  pointY[115]=243.33333;
  pointX[116]=236.66666;
  pointY[116]=243.33333;
  pointX[117]=296.66666;
  pointY[117]=193.33333;
  pointX[118]=296.66666;
  pointY[118]=193.33333;
  pointX[119]=308.3333;
  pointY[119]=206.66666;
  pointX[120]=308.3333;
  pointY[120]=206.66666;
  pointX[121]=308.3333;
  pointY[121]=206.66666;
  pointX[122]=308.3333;
  pointY[122]=206.66666;
  pointX[123]=308.3333;
  pointY[123]=206.66666;
  pointX[124]=366.66666;
  pointY[124]=290.0;
  pointX[125]=365.0;
  pointY[125]=290.0;
  pointX[126]=365.0;
  pointY[126]=290.0;
  pointX[127]=360.0;
  pointY[127]=290.0;
  pointX[128]=358.3333;
  pointY[128]=288.3333;
  pointX[129]=358.3333;
  pointY[129]=285.0;
  pointX[130]=358.3333;
  pointY[130]=280.0;
  pointX[131]=358.3333;
  pointY[131]=271.66666;
  pointX[132]=358.3333;
  pointY[132]=261.66666;
  pointX[133]=358.3333;
  pointY[133]=261.66666;
  pointX[134]=353.3333;
  pointY[134]=234.99998;
  pointX[135]=348.3333;
  pointY[135]=226.66666;
  pointX[136]=348.3333;
  pointY[136]=226.66666;
  pointX[137]=343.3333;
  pointY[137]=223.33333;
  pointX[138]=335.0;
  pointY[138]=221.66666;
  pointX[139]=330.0;
  pointY[139]=228.33333;
  pointX[140]=325.0;
  pointY[140]=238.33333;
  pointX[141]=320.0;
  pointY[141]=251.66666;
  pointX[142]=320.0;
  pointY[142]=260.0;
  pointX[143]=320.0;
  pointY[143]=270.0;
  pointX[144]=321.66666;
  pointY[144]=283.3333;
  pointX[145]=323.3333;
  pointY[145]=291.66666;
  pointX[146]=323.3333;
  pointY[146]=298.3333;
  pointX[147]=323.3333;
  pointY[147]=301.66666;
  pointX[148]=323.3333;
  pointY[148]=301.66666;
  pointX[149]=318.3333;
  pointY[149]=315.0;
  pointX[150]=318.3333;
  pointY[150]=315.0;
  pointX[151]=306.66666;
  pointY[151]=316.66666;
  pointX[152]=306.66666;
  pointY[152]=316.66666;
  pointX[153]=278.3333;
  pointY[153]=300.0;
  pointX[154]=268.3333;
  pointY[154]=291.66666;
  pointX[155]=268.3333;
  pointY[155]=291.66666;
  pointX[156]=258.3333;
  pointY[156]=271.66666;
  pointX[157]=256.66666;
  pointY[157]=268.3333;
  pointX[158]=256.66666;
  pointY[158]=265.0;
  pointX[159]=263.3333;
  pointY[159]=263.3333;
  pointX[160]=271.66666;
  pointY[160]=261.66666;
  pointX[161]=276.66666;
  pointY[161]=261.66666;
  pointX[162]=285.0;
  pointY[162]=261.66666;
  pointX[163]=291.66666;
  pointY[163]=265.0;
  pointX[164]=291.66666;
  pointY[164]=265.0;
  pointX[165]=308.3333;
  pointY[165]=278.3333;
  pointX[166]=308.3333;
  pointY[166]=280.0;
  pointX[167]=308.3333;
  pointY[167]=280.0;
  pointX[168]=303.3333;
  pointY[168]=283.3333;
  pointX[169]=303.3333;
  pointY[169]=283.3333;
  pointX[170]=300.0;
  pointY[170]=285.0;
  pointX[171]=300.0;
  pointY[171]=285.0;
  pointX[172]=295.0;
  pointY[172]=285.0;
  pointX[173]=291.66666;
  pointY[173]=283.3333;
  pointX[174]=290.0;
  pointY[174]=283.3333;
  pointX[175]=285.0;
  pointY[175]=280.0;
  pointX[176]=285.0;
  pointY[176]=280.0;
  pointX[177]=270.0;
  pointY[177]=260.0;
  pointX[178]=270.0;
  pointY[178]=249.99998;
  pointX[179]=270.0;
  pointY[179]=239.99998;
  pointX[180]=270.0;
  pointY[180]=239.99998;
  pointX[181]=276.66666;
  pointY[181]=233.33333;
  pointX[182]=285.0;
  pointY[182]=229.99998;
  pointX[183]=286.66666;
  pointY[183]=228.33333;
  pointX[184]=290.0;
  pointY[184]=228.33333;
  pointX[185]=290.0;
  pointY[185]=228.33333;
  pointX[186]=323.3333;
  pointY[186]=234.99998;
  pointX[187]=323.3333;
  pointY[187]=234.99998;
  pointX[188]=376.66666;
  pointY[188]=238.33333;
  pointX[189]=376.66666;
  pointY[189]=238.33333;
  pointX[190]=408.3333;
  pointY[190]=229.99998;
  pointX[191]=411.66666;
  pointY[191]=218.33333;
  pointX[192]=409.99997;
  pointY[192]=204.99998;
  pointX[193]=401.66666;
  pointY[193]=191.66666;
  pointX[194]=394.99997;
  pointY[194]=185.0;
  pointX[195]=394.99997;
  pointY[195]=185.0;
  pointX[196]=373.3333;
  pointY[196]=168.33333;
  pointX[197]=368.3333;
  pointY[197]=165.0;
  pointX[198]=365.0;
  pointY[198]=165.0;
  pointX[199]=360.0;
  pointY[199]=163.33333;
  pointX[200]=353.3333;
  pointY[200]=170.0;
  pointX[201]=353.3333;
  pointY[201]=170.0;
  pointX[202]=353.3333;
  pointY[202]=170.0;
  pointX[203]=345.0;
  pointY[203]=234.99998;
  pointX[204]=345.0;
  pointY[204]=234.99998;
  pointX[205]=345.0;
  pointY[205]=234.99998;
  pointX[206]=345.0;
  pointY[206]=276.66666;
  pointX[207]=340.0;
  pointY[207]=288.3333;
  pointX[208]=340.0;
  pointY[208]=288.3333;
  pointX[209]=321.66666;
  pointY[209]=305.0;
  pointX[210]=303.3333;
  pointY[210]=308.3333;
  pointX[211]=278.3333;
  pointY[211]=310.0;
  pointX[212]=278.3333;
  pointY[212]=310.0;
  pointX[213]=278.3333;
  pointY[213]=310.0;
  pointX[214]=278.3333;
  pointY[214]=310.0;
  pointX[215]=249.99998;
  pointY[215]=268.3333;
  pointX[216]=249.99998;
  pointY[216]=268.3333;
  pointX[217]=249.99998;
  pointY[217]=268.3333;
  pointX[218]=253.33333;
  pointY[218]=231.66666;
  pointX[219]=258.3333;
  pointY[219]=221.66666;
  pointX[220]=258.3333;
  pointY[220]=221.66666;
  pointX[221]=258.3333;
  pointY[221]=221.66666;
  pointX[222]=258.3333;
  pointY[222]=221.66666;
  pointX[223]=295.0;
  pointY[223]=214.99998;
  pointX[224]=295.0;
  pointY[224]=214.99998;
  pointX[225]=316.66666;
  pointY[225]=238.33333;
  pointX[226]=316.66666;
  pointY[226]=238.33333;
  pointX[227]=316.66666;
  pointY[227]=238.33333;
  pointX[228]=346.66666;
  pointY[228]=273.3333;
  pointX[229]=361.66666;
  pointY[229]=285.0;
  pointX[230]=371.66666;
  pointY[230]=290.0;
  pointX[231]=380.0;
  pointY[231]=291.66666;
  pointX[232]=383.3333;
  pointY[232]=291.66666;
  pointX[233]=383.3333;
  pointY[233]=291.66666;
  pointX[234]=389.99997;
  pointY[234]=281.66666;
  pointX[235]=389.99997;
  pointY[235]=273.3333;
  pointX[236]=388.3333;
  pointY[236]=260.0;
  pointX[237]=380.0;
  pointY[237]=243.33333;
  pointX[238]=380.0;
  pointY[238]=243.33333;
  pointX[239]=363.3333;
  pointY[239]=218.33333;
  pointX[240]=355.0;
  pointY[240]=209.99998;
  pointX[241]=351.66666;
  pointY[241]=206.66666;
  pointX[242]=351.66666;
  pointY[242]=206.66666;
  pointX[243]=351.66666;
  pointY[243]=211.66666;
  pointX[244]=351.66666;
  pointY[244]=211.66666;
  pointX[245]=353.3333;
  pointY[245]=251.66666;
  pointX[246]=355.0;
  pointY[246]=270.0;
  pointX[247]=356.66666;
  pointY[247]=285.0;
  pointX[248]=356.66666;
  pointY[248]=301.66666;
  pointX[249]=356.66666;
  pointY[249]=313.3333;
  pointX[250]=355.0;
  pointY[250]=321.66666;
  pointX[251]=351.66666;
  pointY[251]=326.66666;
  pointX[252]=351.66666;
  pointY[252]=326.66666;
  pointX[253]=321.66666;
  pointY[253]=333.3333;
  pointX[254]=321.66666;
  pointY[254]=333.3333;
  pointX[255]=295.0;
  pointY[255]=331.66666;
  pointX[256]=295.0;
  pointY[256]=331.66666;
  pointX[257]=285.0;
  pointY[257]=325.0;
  pointX[258]=285.0;
  pointY[258]=318.3333;
  pointX[259]=285.0;
  pointY[259]=311.66666;
  pointX[260]=288.3333;
  pointY[260]=306.66666;
  pointX[261]=290.0;
  pointY[261]=305.0;
  pointX[262]=291.66666;
  pointY[262]=305.0;
  pointX[263]=291.66666;
  pointY[263]=305.0;
  x[0]=131.66666;
  y[0]=340.0;
  w[0]=35.0;
  h[0]=31.666656;
  x[1]=253.33333;
  y[1]=355.0;
  w[1]=-28.333344;
  h[1]=61.666656;
  x[2]=231.66666;
  y[2]=454.99997;
  w[2]=-111.666664;
  h[2]=-43.333313;
  x[3]=70.0;
  y[3]=398.3333;
  w[3]=49.999992;
  h[3]=-70.0;
  x[4]=183.33333;
  y[4]=273.3333;
  w[4]=-38.33333;
  h[4]=80.0;
  x[5]=203.33333;
  y[5]=351.66666;
  w[5]=103.33333;
  h[5]=78.33331;
  x[6]=396.66666;
  y[6]=416.66666;
  w[6]=-143.33333;
  h[6]=46.666656;
  x[7]=248.33333;
  y[7]=468.3333;
  w[7]=-55.0;
  h[7]=-128.33331;
  vertexX[0][0]=854.99994;
  vertexY[0][0]=136.66666;
  vertexX[0][0]=854.99994;
  vertexY[0][0]=136.66666;
  vertexX[0][0]=854.99994;
  vertexY[0][0]=136.66666;
  vertexX[0][0]=854.99994;
  vertexY[0][0]=136.66666;
  vertexX[0][0]=854.99994;
  vertexY[0][0]=136.66666;
  vertexX[0][0]=854.99994