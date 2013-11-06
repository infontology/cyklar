int i=1;
int y=0;
Table table1;
int antalRader = 0;
int row1;
int[] antal;
float[] temperatur;
//int imageNumber = 0;
int[] timme;
int[] dag;
int[] veckodag;
int[] manad;
int[] ar;
float minTemp = -14.2;
float maxTemp = 27.8;
float tempSpan = 255/(maxTemp - minTemp);

void setup() {
size(1200,500);
frameRate(2);
colorMode(HSB);

Table table1 = loadTable("http://infontology.org/s/omvdev/data/cykeldata_03.tsv", "header, tsv");
 
antalRader = table1.getRowCount();
//println(table1.getRowCount());
antal = new int[antalRader];
temperatur = new float[antalRader];
timme = new int[antalRader];
dag = new int[antalRader];
veckodag = new int[antalRader];
manad = new int[antalRader];
ar = new int[antalRader];



//println (antalRader);


//i = (i+1)%tableCount;
//println (i);
//for (int i=0; i < antalRader; i = i+1) {
//TableRow row1 = table1.getRow(i);  
//    antal[i]=row1.getInt("antal");
//  }


for (int j=0; j < antalRader; j++) {
TableRow row1 = table1.getRow(j);  
    temperatur[j]=row1.getFloat("temperatur");
    antal[j]=row1.getInt("antal");    
    dag[j]=row1.getInt("dag");    
    veckodag[j]=row1.getInt("veckodag");    
    manad[j]=row1.getInt("månad");    
    timme[j]=row1.getInt("timme");
//    println(row1.getInt("antal"));
 //   println(j);
//    println("temp"+str(temperatur[j]));
    ar[j]=row1.getInt("år");
  }

}

void draw() {

  
  fill(255,128);
  stroke(255,128);
background(128,128);
  


//println(veckodag[i]);
//println(antalRader);

if (veckodag[i]<=5) {

for (int day = dag[i]; (day == dag[i] && i<antalRader)  ; day = day){  
fill((maxTemp-temperatur[i])*tempSpan, 255, 255,50);
noStroke();
//stroke(0);
  ellipse((30*(timme[i]))+20, 400-(1*antal[i]), 30, 30);
if (timme[i]>0) {
//line ((30*(timme[i-1]))+20, 400-(1*antal[i-1]),(30*(timme[i]))+20, 400-(1*antal[i]));
}

//println("timme"+timme[i]);

text (timme[i],30*(timme[i])+20, 450);

text (temperatur[i], 1000, 220);
ellipse(1000, 320, 30, 30);

i=int(random(antalRader));
}

//println("i"+i);
//println("dag"+dag[i]);
} else {
for (int day = dag[i]; (day == dag[i] && i<antalRader)  ; day = day){  
i=int(random(antalRader));
}
}

text (dag[i]+"/"+manad[i]+"-"+ar[i], 1000, 120);
//text (manad[i], 800, 120);

//i=y;

//if (i%24 == 23){
//imageNumber ++;
//String filename = "bild"+imageNumber+".jpg";
//save(filename);  
//}


//noLoop();
//println(i);
}
