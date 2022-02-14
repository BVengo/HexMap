class HexMap {
  ArrayList<HexCell> cells = new ArrayList<HexCell>();
  
  public HexMap(int x, int y, int mapSize, int cellSize) {
    
    
    int numCells = 10; //Modify to be based on mapSize
    
    for(int i = 0; i < numCells; i++) {
      int cellPosX = 0;
      int cellPosY = 0;
      cells.add(new HexCell(cellPosX, cellPosY, cellSize));
    }
  }
  
  public void draw() {
    for(HexCell cell : cells) {
      cell.draw();
    }
  }
}
