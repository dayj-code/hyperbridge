// Copyright (C) Polytope Labs Ltd.
// SPDX-License-Identifier: Apache-2.0

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// 	http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pragma solidity ^0.8.17;

import {EvmHost, HostParams} from "./EvmHost.sol";

/**
 * @title The PolygonHost
 * @author Polytope Labs (hello@polytope.technology)
 *
 * @notice The IsmpHost and IsmpDispatcher implementation for the Polygon state machine.
 * Refer to the official ISMP specification. https://docs.hyperbridge.network/protocol/ismp
 */
contract PolygonHost is EvmHost {
    constructor(HostParams memory params) EvmHost(params) {}

    /// chainId for the polygon mainnet
    uint256 public constant CHAIN_ID = 137;

    function chainId() public pure override returns (uint256) {
        return CHAIN_ID;
    }
}
