
import g4p_controls.*;
import processing.serial.*;
Serial port;

public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  
  
}

public void draw(){
  background(230);
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
fldIntensidad.setNumericType(G4P.INTEGER);
fldDuracion.setNumericType(G4P.INTEGER);
fldIntensidad.setNumeric(0,9950,20);
fldIntensidad.setText("20");
fldDuracion.setText("500");
}

void keypressed(){
  if(key==ENTER){
    int temp;
temp=int(fldIntensidad.getValueI()/39);
println(temp);
  port.write(temp);
  delay(fldDuracion.getValueI());
  port.write(0);
  }
}
