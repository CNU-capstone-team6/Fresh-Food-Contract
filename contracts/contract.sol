pragma solidity >= 0.4.0 ;
pragma experimental ABIEncoderV2;

contract Storage {
    struct Food {
        uint number;
        string name;
        string origin;
    }

    Food[] public foods;
    uint private number;

    mapping (uint => uint) chainLengthCount;

    function addFood(uint _number, string calldata _name, string calldata _origin) external {
        if(_number == 0) {
            foods.push(Food(++number, _name, _origin));
            chainLengthCount[number]++;
        }
        else {
            foods.push(Food(_number, _name, _origin));
            chainLengthCount[_number]++;
        }
    }

    function getFood(uint _number) external view returns (Food[] memory) {
        Food[] memory result = new Food[](chainLengthCount[_number]);
        uint counter = 0;
        for(uint i = 0; i < foods.length; i++) {
            if(foods[i].number == _number) {
                result[counter] = foods[i];
                counter++;
            }
        }

        return result;
    }
}