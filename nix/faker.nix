{
  "0.0.0.1" = {
    sha256 = "b77025fba4ffff57d4b66224b19e829c4a06f2550ff314c2cccf3c97dd7f0b18";
    revisions = {
      r0 = {
        nix = import ../hackage/faker-0.0.0.1-r0-7c273a46b84a20e1f21c49ae1e6e09e5b1fddda21e30d8b3745b0668c6b65ebb.nix;
        revNum = 0;
        sha256 = "7c273a46b84a20e1f21c49ae1e6e09e5b1fddda21e30d8b3745b0668c6b65ebb";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "786a74e347813217f5c564e009ff70756e0952b64dc931d13f6ec5a6469780f2";
    revisions = {
      r0 = {
        nix = import ../hackage/faker-0.0.0.2-r0-e181a9dba8022098d2cca9822b6a616a28d3013ee978076b7c7cd18b6e15c8eb.nix;
        revNum = 0;
        sha256 = "e181a9dba8022098d2cca9822b6a616a28d3013ee978076b7c7cd18b6e15c8eb";
      };
      default = "r0";
    };
  };
}