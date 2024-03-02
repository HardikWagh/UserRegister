// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Registerperson {

    struct Person {
        string name;
        string email;
        uint256 conct;
        uint256 balance;
        address personAdd;
    }

    // Introduced a dynamic array persons to store registered persons.
    Person[] public persons; 

    // Added a registerPerson function to register new persons.
    function registerPerson(string memory nm, uint256 cn, string memory em, uint256 mn, address add) public {
        persons.push(Person(nm, em, cn, mn, add));
    }
       function retrievePerson(uint256 personIndex) public view returns (string memory, uint256, string memory, uint256) {
        require(personIndex < persons.length, "Person does not exist");
        Person memory p = persons[personIndex];
        return (p.name, p.conct, p.email, p.balance);
    }
}
