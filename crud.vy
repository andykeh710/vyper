struct User: 
    id: int128
    name: String[100]

users: User[100]
nextId: int128

@external
def createUser(_name: String[100]):
    assert len(_name) != 0
    self.users[self.nextId] = User({id: self.nextId, name: _name})
    self.nextId += 1

@external
@view
def read(id: int128) -> (int128, String[100]):
    assert id < self.nextId
    return (self.users[id].id, self. users[id].name)

@external
def update(id: int128, name: String[100]):
    assert id < self.nextId and len(self.users[id].name) != 0
    self.users[id].name = name

@external
def destroy(id: int128): 
    assert id < self.nextId and len(self.users[id].name) != 0
    self.users[id].name = ''