class HexCell {
    HexType type = HexType.EMPTY;
  
    ArrayList<PVector> vertices;
    
    float x;
    float y;
    final float radius;
    int id;
    
    PShape shape;
    
    public HexCell(float x, float y, float radius, int id) {
        this.id = id;
        this.x = x;
        this.y = y;
      
        this.radius = radius;
     }
  
    public void draw() {
        pushMatrix();
        
        fill(255, 255, 255);
        stroke(153);
        strokeWeight(2);
        
        translate(x, y);
        scale(1, -1);
        beginShape();
        
        for (int i = 0; i < 6; i++) {
          vertex(radius * cos(TWO_PI * i / 6), radius * sin(TWO_PI * i / 6));
        }
        
        endShape(CLOSE);
        popMatrix();
         
        textAlign(CENTER);
        text(id, x, y);
    }
    

    public void hover() {
    }
    
    public void setType(HexType hexType) {
      type = hexType;
    }
}
