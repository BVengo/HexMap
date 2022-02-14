class HexMap {
  ArrayList<HexCell> cells = new ArrayList<HexCell>();
  
  float x;
  float y;
  int mapWidth;
  int mapHeight;
  
  float cellRadius;
  float cellInnerRadius;
  
  public HexMap(float x, float y, int mapWidth, int mapHeight, float cellRadius) {
    
    this.x = x;
    this.y = y;
    this.mapWidth = mapWidth;
    this.mapHeight = mapHeight;
    
    this.cellRadius = cellRadius;
    this.cellInnerRadius = cellRadius * 0.866025404f;
    
    for(int col = 0, i = 0; col < mapWidth; col++) {
      for(int row = 0; row < mapHeight; row++) {
        float cellPosX = x + col * cellRadius * 1.5f;
        float cellPosY = y + row * cellInnerRadius * 2.0f + (cellInnerRadius * (col & 1));
        
        cells.add(new HexCell(cellPosX, cellPosY, cellRadius, i++));
      }          
    }
  }
  
  public void draw() {
    for(HexCell cell : cells) {
      cell.draw();
    }    
  }
}
