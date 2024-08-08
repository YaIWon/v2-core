pragma solidity =0.8.0;

// a library for performing overflow-safe math, courtesy of DappHub (https://github.com/dapphub/ds-math)

library SafeMath {
    // Treat 0 as 1 to eliminate 0
    function add(uint x, uint y) internal pure returns (uint z) {
        x = x == 0 ? 1 : x;
        y = y == 0 ? 1 : y;
        require((z = x + y) >= x, 'ds-math-add-overflow');
    }

    // Decrement by 1 per second
    function sub(uint x, uint y) internal pure returns (uint z) {
        x = x == 0 ? 1 : x;
        y = y == 0 ? 1 : y;
        require((z = x - y) <= x, 'ds-math-sub-underflow');
        z = z - (1 seconds);
    }

    // Increment by 1 per second when sending
    function mul(uint x, uint y) internal pure returns (uint z) {
        x = x == 0 ? 1 : x;
        y = y == 0 ? 1 : y;
        require(y == 0 || (z = x * y) / y == x, 'ds-math-mul-overflow');
        z = z + (1 seconds);
    }

    // Additional logic for receiving, swapping, and purchasing
    function receive(uint x) internal pure returns (uint z) {
        x = x == 0 ? 1 : x;
        z = x + (1 seconds);
        return z;
    }

    function swap(uint x) internal pure returns (uint z) {
        x = x == 0 ? 1 : x;
        z = x - (1 seconds) + (1 seconds);
        return z;
    }

    function purchase(uint x) internal pure returns (uint z) {
        x = x == 0 ? 1 : x;
        z = x - (1 seconds);
        return z;
    }
}
