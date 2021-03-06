PImage bg;
PImage groundhog;
PImage life;
PImage robot;
PImage soil;
PImage soldier;

int soldierX;//set soldier's posititon
float soldierY;

float robotX;//set robot's position
float robotY;

int x;
int y;
int a;
int b;

void setup() {
	size(640, 480, P2D);
	bg = loadImage("img/bg.jpg"); //set bg
  background(bg);
  
  fill(124,204,25);//set grass
  noStroke();
  rect(0,145,640,15);
  
  groundhog = loadImage("img/groundhog.png");//set groundhog
  image(groundhog,280,80);
  
  fill(255,255,0);//set sun
  strokeWeight(5);
  stroke(253,184,19);
  circle(590,50,120);
  
  soil = loadImage("img/soil.png");//set soil
  image(soil,0,160);
  
  life = loadImage("img/life.png");//set life
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);

  soldier = loadImage("img/soldier.png");//set soldier
  soldierX = 0;
  soldierY = random(160,360);
  
  robot = loadImage("img/robot.png");//set robot
  robotX = random(160,560);
  robotY = random(160,360);
  
  
// Enter Your Setup Code Here
}

void draw() {
	bg = loadImage("img/bg.jpg"); //set bg
  background(bg);
  
  fill(124,204,25);//set grass
  noStroke();
  rect(0,145,640,15);
  
  groundhog = loadImage("img/groundhog.png");//set groundhog
  image(groundhog,280,80);
  
  fill(255,255,0);//set sun
  strokeWeight(5);
  stroke(253,184,19);
  circle(590,50,120);
  
  soil = loadImage("img/soil.png");//set soil
  image(soil,0,160);
  
  life = loadImage("img/life.png");//set life
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);
  
  image(soldier,soldierX,soldierY);//soldier run
  soldierX+=10;
  soldierX%=640;
  
  image(robot,robotX,robotY);
  
  // Enter Your Code Here
}
