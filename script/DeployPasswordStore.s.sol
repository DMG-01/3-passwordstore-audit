// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import {Script} from "3-passwordstore-audit/lib/forge-std/src/Script.sol";
import {PasswordStore} from "../src/PasswordStore.sol";

contract DeployPasswordStore is Script {
    function run() public returns (PasswordStore) {
        vm.startBroadcast();
        PasswordStore passwordStore = new PasswordStore();
        passwordStore.setPassword("myPassword");
        vm.stopBroadcast();
        return passwordStore;
    }
}
