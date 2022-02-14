void setup() {
  size(1000, 1000);
}

void draw() {
  float cellRadius = 50f;
  float cellInnerRadius = cellRadius * 0.866025404f;
  
  HexMap map = new HexMap(cellRadius * 2, cellInnerRadius * 2, 11, 10, cellRadius);
  
  hint(ENABLE_STROKE_PURE);  
  map.draw();
}
