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
int[] manad;
int[] ar;

void setup() {
size(1200,500);
frameRate(60);

Table table1 = loadTable("cykeldata_03.tsv", "header, tsv");
 
antalRader = table1.getRowCount();
//println(table1.getRowCount());
antal = new int[antalRader];
temperatur = new float[antalRader];
timme = new int[antalRader];
dag = new int[antalRader];
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
    manad[j]=row1.getInt("månad");    
    timme[j]=row1.getInt("timme");
    println(row1.getInt("antal"));
    println(j);
    //println(timme[j]);
    ar[j]=row1.getInt("år");
  }

}

void draw() {

//println(antal[4]);
//TableRow row1 = table1.getRow(i);
  
//for (int k=0;k<antalRader;k++){println(k);println(dag[k]);}
  
//  println(i);
  
  fill(255,128);
  stroke(255,128);
//background(128,128);
  
//if (timme[i]==0){background(i,204,0, 128);}



//y=i;
//println(i);
for (int day = dag[i]; day == dag[i] || i+24>antalRader; day = day){  
ellipse((30*(timme[i]))+20, 400-(1*antal[i]), 5, 5);
stroke(0,12);

if (timme[i]>0) {
line ((30*(timme[i-1]))+20, 400-(1*antal[i-1]),(30*(timme[i]))+20, 400-(1*antal[i]));
}

//println("timme"+timme[i]);

text (timme[i],30*(timme[i])+20, 450);


i++;



println("i"+i);
println("dag"+dag[i]);

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
