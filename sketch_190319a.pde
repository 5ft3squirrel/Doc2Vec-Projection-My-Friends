import peasy.*;

Table data;
Float x, y, z;
String text, textshort, location;
PeasyCam cam;

void setup() {
  size(1080, 720, P3D);
  cam = new PeasyCam(this, 1080/2,720/2,100,800);
  data = loadTable("d2v.csv","header");
  textMode(SHAPE);
}
void draw(){
  background(255);
  beginShape();
  for (TableRow row : data.rows()) {
    pushMatrix();
    x = 200 + 2*row.getFloat("x");
    y = 200 + 2*row.getFloat("y");
    z = 2*row.getFloat("z");
    fill(0);
    text = row.getString("text");
    location = row.getString("location");
    if (text.length()>20){
      textshort = text.substring(0,20);
    }
    else{
      textshort = text;
    }
    if (location.equals("library")){
      
      stroke(255,0,0);
    }
    else if (location.equals("bus stop")){
      stroke(0,255,0);
    }
    else if (location.equals("on the way to the library")){
      stroke(0,0,255);
    }
    translate(x, y, z);
    strokeWeight(5);
    point(0,0,0);
    text(textshort,0,0,0);
    
    PVector mouse_pos = new PVector(mouseX,mouseY);
    PVector screen_pos = new PVector(screenX(0,0,0),screenY(0,0,0));
    float mouseObjectDist = mouse_pos.dist(screen_pos);

    if(mouseObjectDist < 2){
      strokeWeight(10);
      point(0,0,0);
      cam.beginHUD();
      fill(255,0,0);
      text(text, 20, 20);
      text(location, 20, 45);
      text(str((x-200)/2), 20, 60);
      text(str((y-200)/2), 20, 75);
      text(str((y-200)/2), 20, 90);
      cam.endHUD();
    }
    
    popMatrix();
    endShape();
  }

}
