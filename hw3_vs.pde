float mx,my,pmx,pmy;
float r,g,b,a;
float x = 0;
float y = 0;
void setup() {
  size(500, 500);
  smooth();
  mx = width/2;
  my = height;
}

void draw() {
  float factor = constrain(mouseX/10,0,5);
  float d = dis_x();
  color x = color(d);
  println(d);
  my = constrain(my,0,height);
  mx = constrain(mx,0,width);
  my = my + (d/width)*random(-5,5);
  mx = mx + (d/width)*random(-5,5);
  background(255);
  rectMode(CENTER);
  fill(99, 174, 47);
  stroke(#B9A08B);
  rect(250, 500, 1000, 200); // Position of the mouse
  fill(175);

  fill(#FF6D12);
  stroke(#FF6D12);
  ellipse(X, 50, 100, 100);
  
  fill(#C12600);
  stroke(#C12600);
  ellipse(X, 50, 80, 80);
  
  fill(#F68656);
  stroke(#F68656);
  ellipse(X, 50, 60, 60);
  
  fill(#FCE13D);
  stroke(#FCE13D);
  ellipse(X, 50, 60, 60);
  
  
  strokeWeight(3);
  stroke(0);
  noFill();
  //Rob's arms
  curve(mx -20, my - 55,mx - 40, my - 62, mx + mx - pmx -60, my + my - pmy -40, mx + 10, my +20);
  curve(mx -25, my - 60,mx - 50, my - 70, mx + mx - pmx -60, my + my - pmy - 40, mx + 50, my +50);

  //Rob's arms
  curve(mx +20, my - 55,mx + 40, my - 62, mx + mx - pmx + 60, my + my - pmy -40, mx - 10, my +20);  
  curve(mx +25, my - 60,mx + 50, my - 70, mx + mx - pmx + 60, my + my - pmy -40, mx - 50, my +50);  
  
   // Hand
  fill(0);
  stroke(0);
  ellipse(mx + mx - pmx -62, my + my - pmy -45, 15, 15);
  ellipse(mx + mx - pmx +62, my + my - pmy -45, 15, 15);
  
  strokeWeight(3);
  noFill();
  //Rob's legs
  stroke(0);
  curve(mx -20, my - 30,mx - 20, my - 30, mx + mx - pmx -18, my + my - pmy +10, mx + 10, my +20);
  curve(mx -25, my - 35,mx - 30, my - 40, mx + mx - pmx -22, my + my - pmy +10, mx + 50, my +50);
  curve(mx -25, my - 35,mx + mx - pmx - 22, my + my - pmy +10, mx + mx - pmx -18, my + my - pmy +10, mx + 50, my +50); // adapt2 , x1 x2 , adapt2
 
    //Rob's legs
  curve(mx +20, my - 30,mx + 20, my - 30, mx + mx - pmx +18, my + my - pmy +10, mx - 10, my +20);
  curve(mx +25, my - 35,mx + 30, my - 40, mx + mx - pmx +22, my + my - pmy +10, mx - 50, my +50);
  curve(mx +25, my - 35,mx + mx - pmx + 22, my + my - pmy +10, mx + mx - pmx +18, my + my - pmy +10, mx - 50, my +50);
  strokeWeight(1);
  
 // rect(mx, my, 50, 50); // Position of the mouse
  
   //Rob's body
  fill(150);
  float center_1_X = mx-125;
  float center_1_Y = my-170;
  
  float center_2_X = mx-40;
  float center_2_Y = my-180;
  
  float center_3_X = mx+40;
  float center_3_Y = my-180;
  
  float center_4_X = mx+125;
  float center_4_Y = my-170;
  
  float center_5_X = mx-100;
  float center_5_Y = my-230;
  
  float center_6_X = mx-80;
  float center_6_Y = my-240;
  
  float center_7_X = mx;
  float center_7_Y = my-245;
  
  float center_8_X = mx+80;
  float center_8_Y = my-240;
  
  float center_9_X = mx+100;
  float center_9_Y = my-230;
  
  fill(185,234,251);
  strokeWeight(2);
  
  stroke(77,162,193);
  triangle(center_1_X, center_1_Y, mx, my, center_2_X, center_2_Y);
  
  fill(228,247,254);
  triangle(center_2_X, center_2_Y, mx, my, center_3_X, center_3_Y);
  
  fill(185,234,251);
  triangle(center_3_X, center_3_Y, mx, my, center_4_X, center_4_Y);
  
  fill(155,229,244);
  triangle(center_5_X, center_5_Y, center_1_X, center_1_Y, center_6_X, center_6_Y);
  
  fill(201,236,255);
  triangle(center_6_X, center_6_Y, center_1_X, center_1_Y, center_2_X, center_2_Y);
  
  fill(209,242,251);
  triangle(center_6_X, center_6_Y, center_2_X, center_2_Y, center_7_X, center_7_Y);
  
  fill(228,247,254);
  triangle(center_2_X, center_2_Y, center_7_X, center_7_Y, center_3_X, center_3_Y);
  
  fill(209,242,251);
  triangle(center_7_X, center_7_Y, center_3_X, center_3_Y, center_8_X, center_8_Y);
  
  fill(228,247,254);
  triangle(center_8_X, center_8_Y, center_3_X, center_3_Y, center_4_X, center_4_Y);  
  
  fill(144,220,239);
  triangle(center_8_X, center_8_Y, center_4_X, center_4_Y, center_9_X, center_9_Y);
    
  //Rob's head
  //fill(255);
  //ellipse(mx, my - 30, 60 , 60);

  //Rob's eyes out
  stroke(0);
  strokeWeight(3);
  fill(255);
  ellipse(mx - 38, my - 110, 50, 50);
  ellipse(mx + 38, my - 110, 50, 50);
  
  //Rob's eyes in
  r = random(150,255);
  g = random(150,255);
  b = random(150,255);
  a = random(150,255);
  fill(r,g,b,a);
  ellipse(mx + mx - pmx - 35, my + my - pmy - 110, 33, 33);
  ellipse(mx + mx - pmx + 35, my + my - pmy - 110, 33, 33);
  
  // kiw 

  line(mx - 30, my - 135, mx + mx - pmx - 60, my + my - pmy - 143);
  line(mx + 30, my - 135, mx + mx - pmx + 60, my + my - pmy - 143);

    // mouse
  noFill();
  //stroke(2); 
  curve(mx + 10, my - 80,mx - 6, my - 100, mx + 6, my - 100, mx + 10, my - 20);
  
  pmy = my;
  pmx = mx;
  //line(mx - 20, my -30, mx + mx - pmx - 30, my + my - pmy + 5);
  //line(mx + 20, my -30, mx + mx - pmx + 30, my + my - pmy + 5);
}

void jiggle(float factor){
  
} 

float dis_x(){
  return (mouseX-0);
}

float distance(float x1,float y1,float x2 , float y2){
  return sqrt(pow((x1-x2),2)+pow((y1-y2),2));
}
