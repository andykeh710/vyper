ids: int128[100]
idIndex: int128

@external
def addElement(id: int128):
    self.ids[self.idIndex] = id
    self.idIndex += 1
    
@external
@view 
def get(i: int128) -> int128:
    return self.ids[i]
    
@external 
@view
def getAll() -> int128[100]:
    return self.ids
    
@external 
@view
def index() -> int128:
    return self.idIndex 