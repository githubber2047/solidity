
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

function deleteFromArray(uint[] storage array, uint indexToDelete) internal {

  require(indexToDelete < array.length, "Index out of bounds");

  // Swap the element to delete with the last element
  array[indexToDelete] = array[array.length - 1];   

  // Remove the last element
  array.pop();

}

uint[] storage array = [0,1,2,3,4,5,6,7,8,9,10,11];

deleteFromArray(array, 8); 
deleteFromArray(array, 2);
deleteFromArray(array, 7);