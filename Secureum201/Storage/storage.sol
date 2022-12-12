// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract ComplexStorage{
    uint256 [3] public fixedArray;
    uint256 [] public bigArray;
    uint64 [] public smallArray;

    mapping(uint256=>uint256) public Mymapping;
    mapping(uint256=>mapping (address=>uint256)) public nestedMapping;
    mapping(address=>uint256[]) public AddressToList;

    struct Map{
        address owner;
        string name;   
        uint256 Age;
    }
    mapping(address=>Map) public Details;

   constructor(){
       fixedArray=[2,67,80];
       bigArray=[1,2,3,5,5,6,7,8];
       smallArray=[9,8,7,6,8];
       Mymapping[12]=2024;
       Mymapping[20]=2020;
       nestedMapping[2][0x5B38Da6a701c568545dCfcB03FcB875f56beddC4]=100;
       nestedMapping[5][0x5B38Da6a701c568545dCfcB03FcB875f56beddC4]=35000;
       AddressToList[0x5B38Da6a701c568545dCfcB03FcB875f56beddC4]=[1,2,3,45,6];
        Details[0x617F2E2fD72FD9D5503197092aC168c91465E7f2]=Map(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2,"AnandKumarRajSINGH",15);

   }


        // getting FixedArray
    function FixedArrayView(uint256 index) public view returns(uint256 value){
        assembly{
            value:=sload(add(fixedArray.slot,index))
        }
    }

    // getting dynamic array
    function BigArrayView(uint index) public view returns(uint256 value,bytes32 location){
        uint Slot;
        assembly{
            Slot:=bigArray.slot
        }
        location=keccak256(abi.encode(Slot));
        assembly{
            value:=sload(add(location,index))
        }
        
    } 

        // getting dynamic array of smaller element

    function SmallArrayView(uint index) public view returns(uint256 value,bytes32 location){
        uint Slot;
        assembly{
            Slot:=smallArray.slot
        }
        location=keccak256(abi.encode(Slot));
        assembly{
            value:=sload(add(location,index))
        }
        
    } 

        // tracking slot
    function slotView(uint _slot) public view returns(bytes32 value){
        assembly{
            value:=sload(_slot)

        }
    }

        // set value of slot
    function setslot(uint _slot, uint _value) public {
        assembly{

            sstore(_slot, _value)
        }
    }

        // finiding mapping slot
    function mappingSlot() public pure returns(uint256 Slot){
        assembly{
            Slot:=nestedMapping.slot
        }
    }


        // getting mapping value through key
    function ViewMymapping(uint key) public view returns(bytes32 location,uint value){
        uint Slot;
        assembly{
            Slot:=Mymapping.slot
        }
        location=keccak256(abi.encode(key,uint256(Slot)));
        assembly{
            value:=sload(location)
        }
    }

    // getting nested mapping value through keys
    function ViewNestedmapp(uint key1, address key2) public view returns(bytes32 location,uint256 value){
        uint256 Slot;
        assembly{
            Slot:=nestedMapping.slot
        }
        location= keccak256(abi.encode(address(key2),keccak256(abi.encode(uint256(key1),Slot))));
        assembly{
            value:=sload(location)
        }
    }

    //getting mapping of dynamic array through key and index of array
    function viewAddressToList(address key,uint256 index) public view returns(bytes32 location, uint256 value){
        uint256 MapSlot;
        assembly{
            MapSlot:=AddressToList.slot
        }
        bytes32 araySlot=keccak256(abi.encode(address(key),MapSlot));
        location=keccak256(abi.encode(uint256(araySlot)));
        assembly{
            value:=sload(add(location,index))
        }


        }

        // getting struct that store in mapping through key

        function ViewDetails(address key) public view returns(bytes32 location, address owner/*string memory name,uint Age*/){
            bytes32 Slot;
            assembly{
                Slot:=Details.slot
            }
            location=keccak256(abi.encode(address(key),uint256(Slot)));
            assembly{
                owner:=sload(location)
                // name:=sload(add(location,1))
                // Age:=sload(add(location,2))
            }



        }
    }