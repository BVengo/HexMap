class HexCell {
    ArrayList<PVector> vertices;
  
    public HexCell(int x, int y, int size) {
      // assign these correctly      
      vertices = new ArrayList<PVector>() {{
          add(new PVector(0, 0));
          add(new PVector(1, 0));
          add(new PVector(2, 0));
          add(new PVector(3, 0));
          add(new PVector(4, 0));
          add(new PVector(5, 0));
          add(new PVector(6, 0));
      }};
    }
  
    public void draw() {
        // for loop 0 to vertices.length()-2 - line from [i] to [i+1]
    }
}
