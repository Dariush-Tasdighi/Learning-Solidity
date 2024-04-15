// **************************************************
// Income: About ~ 150,000$ to 250,00$ per Year
// **************************************************

// **************************************************
// https://ethereum.org/
//
// For Solidity:
//      v0.8.25
//      https://docs.soliditylang.org/
// **************************************************

// **************************************************
// IDE:
//      1. Offline: VS Code + Some Library
//      2. Online: https://remix.ethereum.org/
// **************************************************

// **************************************************
// Inline Comment

/* Block Comment
   Block Comment
   Block Comment
*/

/* Block Comment
 * Block Comment
 * Block Comment
 */
// **************************************************

// **************************************************
// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;
// **************************************************

// **************************************************
// License:
//
// Sample: MIT
// Sample: GPL-3.0
// **************************************************

// **************************************************
// Version:
//
// pragma solidity 0.8.25;
// pragma solidity ^0.8.0;
// pragma solidity ^0.8.7;
// pragma solidity >=0.7.1 <0.9.0;
// **************************************************

// **************************************************
// The contract in solidity is class!
// MyContract [NOT] myContract:
//      Contract Name should be in pascal case!
// Format Code: Shift + Alt + F
// **************************************************
// contract MyContract
// {
// }
// **************************************************

// **************************************************
// contract MyContract {
// }
// **************************************************

// **************************************************
// value [NOT] Value!
// value [NOT] _value!
//
// fullName [NOT] FullName!
// fullName [NOT] _fullName!
//
// State Variables should be in camelCase!
// **************************************************
// contract MyContract {
//     uint value; // State Variable
// }
// **************************************************

// **************************************************
// Visibility Specifiers (Access Modifier):
//
//    public
//    private
//    internal
//    external
// **************************************************
// contract MyContract {
//     uint private value; // private
// }
// **************************************************

// **************************************************
// contract MyContract {
//     uint public value; // public
// }
// **************************************************

// **************************************************
// contract MyContract {
//     uint256 public value; // uint = uint256
// }
// **************************************************

// **************************************************
// contract MyContract {
//     uint256 public value = 10; // Initial Value
// }
// **************************************************

// **************************************************
//  int =  int256: 256 bit = 32 Bytes
// uint = uint256: 256 bit = 32 Bytes
// **************************************************
//  int8: Integer         : From -128              to 127
// uint8: Unsigned Integer: From 0                 to 255
//
//  intX: Integer         : From -1 * (2**(X - 1)) to (2**(X - 1)) - 1
// uintX: Unsigned Integer: From 0                 to (2**X) - 1
// **************************************************
// contract MyContract {
//     int8 public int8Min = type(int8).min;
//     int8 public int8Max = type(int8).max;

//     uint8 public uint8Min = type(uint8).min;
//     uint8 public uint8Max = type(uint8).max;

//     int256 public int256Min = type(int256).min;
//     int256 public int256Max = type(int256).max;

//     uint256 public uint256Min = type(uint256).min;
//     uint256 public uint256Max = type(uint256).max;
// }
// **************************************************

// **************************************************
// Learning: Default Value
// **************************************************
// contract MyContract {
//     int256 public myInt256; // 0
//     string public myString; // ""
//     bool public myBoolean; // false

//     address public myAddress_1; // 0x0000000000000000000000000000000000000000 = 40 Hex = 20 Bytes
//     address public myAddress_2 = address(1);
//     address public myAddress_3 = address(11); // ...b
//     address public myAddress_4 = address(this);
//     address public myAddress_5 = address(msg.sender);

//     bytes32 public myBytes32_1;  // 0x0000000000000000000000000000000000000000000000000000000000000000 = 64 Hex = 32 Bytes
//     bytes32 public myBytes32_2 = bytes32(uint(2));
//     bytes32 public myBytes32_3 = bytes32(uint(12)); // ...c
// }
// **************************************************

// **************************************************
// Learning: Function
// **************************************************
// contract MyContract {
//     uint256 public value = 10;

//     function setValue(uint256 value_) public {
//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// Learning: View
// **************************************************
// contract MyContract {
//     uint256 private value = 10;

//     function setValue(uint256 value_) public {
//         value = value_;
//     }

//     function getValue() public view returns (uint256) {
//         return value;
//     }
// }
// **************************************************

// **************************************************
// Learning: Constructor
//    Just Once! Just In Deployment!
// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//     }

//     uint256 private value;

//     function setValue(uint256 value_) public {
//         value = value_;
//     }

//     function getValue() public view returns (uint256) {
//         return value;
//     }
// }
// **************************************************

// **************************************************
// Learning: Constructor with parameter(s)
// **************************************************
// contract MyContract {
//     constructor(uint256 value_) {
//         value = value_;
//     }

//     uint256 private value;

//     function setValue(uint256 value_) public {
//         value = value_;
//     }

//     function getValue() public view returns (uint256) {
//         return value;
//     }
// }
// **************************************************

// **************************************************
// Problem? Everybody can set the value!
// **************************************************

// **************************************************
// Local Variable, State Variable, Global Variable
//
// Global Variables:
//
//    1. msg.value
//    2. [msg.sender] -> User Wallet Account (Address)
//    3. block.number
//    4. block.timestamp
// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender; // Sender Wallet Address
//     }

//     address private owner;
//     uint256 private value;

//     function setValue(uint256 value_) public {
//         value = value_;
//     }

//     function getValue() public view returns (uint256) {
//         return value;
//     }

//     function getOwner() public view returns (address) {
//         return owner;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     //address private owner;
//     uint256 public value;
//     //uint256 private value;

//     function setValue(uint256 value_) public {
//         if (msg.sender == owner) {
//             value = value_;
//         }
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     uint256 public value;

//     function setValue(uint256 value_) public {
//         if (msg.sender != owner) {
//             value = value_;
//         }
//         else {
//             revert("Only owner can modify value!"); // Similar throw command in C#
//         }
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     uint256 public value;

//     function setValue(uint256 value_) public {
//         value = value_;

//         if (msg.sender != owner) {
//             revert("Only owner can modify value!");
//         }
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     uint256 public value;

//     function setValue(uint256 value_) public {
//         if (msg.sender != owner) {
//             revert("Only owner can modify value!");
//             // return; // Does not need this command!
//         }

//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     uint256 public value;

//     error OnlyOwner();

//     function setValue(uint256 value_) public {
//         if (msg.sender != owner) {
//             revert OnlyOwner();
//         }

//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     uint256 public value;

//     error OnlyOwner(string);

//     function setValue(uint256 value_) public {
//         if (msg.sender != owner) {
//             revert OnlyOwner("Only owner can modify value!");
//         }

//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     address public owner;
//     uint256 public value;

//     // Note: Error Definition should be in Pascal Case
//     error OnlyOwner(string, address, address);

//     function setValue(uint256 value_) public {
//         if (msg.sender != owner) {
//             revert OnlyOwner("Only owner can modify value!", owner, msg.sender);
//         }

//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     uint256 public value;
//     address public immutable owner; // immutable -> Read Only

//     // require(...)
//     function setValue(uint256 value_) public {
//         require(msg.sender == owner);

//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     uint256 public value;
//     address public immutable owner;

//     function setValue(uint256 value_) public {
//         require(msg.sender == owner, "Only owner can modify value!"); // Display your error message!

//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         owner = msg.sender;
//     }

//     uint256 public value;
//     address public immutable owner;

//     Note: Modifier Definition should be in Camel Case!
//     modifier onlyOwner() {
//         require(msg.sender == owner, "Only owner can modify value!");
//         _;
//     }

//     function setValue(uint256 value_) public onlyOwner {
//         value = value_;
//     }
// }
// **************************************************

// **************************************************
// Clear Cache -> Inspect -> CTRL + SHIFT + i
// **************************************************

// **************************************************
// contract MyContract {
//     constructor() {
//         value = 10;
//         enabled = false;
//         ownerAddress = msg.sender;
//     }

//     bool public enabled;
//     uint256 public value;
//     address public ownerAddress;
//     // address public immutable ownerAddress;

//     // Note: modifiers should be in camelCase!
//     modifier isEnabled() {
//         require(enabled == true, "This contract is not enabled anymore!");
//         _;
//     }

//     modifier onlyOwner() {
//         require(msg.sender == ownerAddress, "Only owner can call this function!");
//         _;
//     }

//     function enable() public onlyOwner {
//         enabled = true;
//     }

//     function disable() public onlyOwner {
//         enabled = false;
//     }

//     // _ownerAddress -> ownerAddress_ -> newOwnerAddress
//     function transferOwner(address newOwnerAddress) public onlyOwner {
//         ownerAddress = newOwnerAddress;
//     }

//     // value & _value => value_
//     // function setValue(uint256 value_) public onlyOwner isEnabled {
//     //     value = value_;
//     // }

//     function setValue(uint256 newValue) public onlyOwner isEnabled {
//         value = newValue;
//     }

//     function plus(uint256 a, uint256 b) public view isEnabled returns (uint256) {
//         return a + b;
//     }

//     // تابع فوق، بهتر بود که به شکل ذیل نوشته شود
//     // ولی هنوز نکات آن‌را یاد نگرفته‌ایم، لذا به همان شکل فوق، از آن استفاده می‌کنیم
//     // function plus(uint256 a, uint256 b) external view isEnabled() returns(uint256) {
//     //     return a + b;
//     // }
// }
// **************************************************

// **************************************************
abstract contract BaseContract {
    constructor() {
        enabled = false;
        ownerAddress = msg.sender;
    }

    bool public enabled;
    address public ownerAddress;

    modifier isEnabled() {
        require(enabled == true, "This contract is not enabled anymore!");
        _;
    }

    modifier onlyOwner() {
        require(msg.sender == ownerAddress, "Only owner can call this function!");
        _;
    }

    function enable() public onlyOwner {
        enabled = true;
    }

    function disable() public onlyOwner {
        enabled = false;
    }

    function transferOwner(address newOwnerAddress) public onlyOwner {
        ownerAddress = newOwnerAddress;
    }
}

contract MyContract is BaseContract {
    constructor() {
        value = 10;
    }

    uint256 public value;

    function setValue(uint256 newValue) public onlyOwner isEnabled {
        value = newValue;
    }

    function plus(uint256 a, uint256 b) external view isEnabled returns (uint256) {
        return a + b;
    }
}
// **************************************************
