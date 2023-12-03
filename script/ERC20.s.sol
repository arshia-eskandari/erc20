// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script, console2} from "forge-std/Script.sol";
import {ERC20} from "../src/ERC20.sol";

contract ERC20Script is Script {
    function setUp() public {}

    function run() public {
        uint256 key = vm.envUint("PRIVATE_KEY");
        vm.broadcast(key);
        new ERC20(
            "Test",
            "TEST",
            18,
            2,
            vm.envAddress("FEE_RECEIVER"),
            1_000_000_000_000_000,
            vm.envAddress("OWNER")
        );
    }
}
