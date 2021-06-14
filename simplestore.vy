# @version ^0.2.0
data: String[100]

@external
def set(_data: String[100]):
    self.data = _data
    
@external
@constant
def get() -> String[100]:
    return self.data