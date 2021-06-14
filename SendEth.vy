# @version ^0.2.0
# Ether is transfered from EOA -> this contract -> to address. 
@external
@payable
def sendEther(to: address):
    #calls default function 
    send(to, msg.value)
