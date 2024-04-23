{
  "0.1.0.0" = {
    sha256 = "f53ab61df6efdd3dd307c7fbe1fe4214b1f3ece37a93a0beb7f91347158353f9";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-instances-0.1.0.0-r0-9ac3a9eed81f7dd4f36a1bd8f70c2a2e9cc69d04bdb8c5aca1a436f1feb1ae5f.nix;
        revNum = 0;
        sha256 = "9ac3a9eed81f7dd4f36a1bd8f70c2a2e9cc69d04bdb8c5aca1a436f1feb1ae5f";
      };
      r1 = {
        nix = import ../hackage/ghc-instances-0.1.0.0-r1-bea9c129e288adb6447989aa82ac92f4289687a96df78d9dfb97bc16361f9059.nix;
        revNum = 1;
        sha256 = "bea9c129e288adb6447989aa82ac92f4289687a96df78d9dfb97bc16361f9059";
      };
      r2 = {
        nix = import ../hackage/ghc-instances-0.1.0.0-r2-280e3b0a9afd710ec992f3232adb1e461b0a0c0977de2c60217a119950bc0492.nix;
        revNum = 2;
        sha256 = "280e3b0a9afd710ec992f3232adb1e461b0a0c0977de2c60217a119950bc0492";
      };
      default = "r2";
    };
  };
  "0.1.0.1" = {
    sha256 = "1a9b438b789d3c472bc4ff7d24b69018cd0aa84f5ff5a589c29c96c445e3d86d";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-instances-0.1.0.1-r0-b7697a8014ebeee27fbcd3feb84831fda47aea1d7185f92ddcbed15373909ea1.nix;
        revNum = 0;
        sha256 = "b7697a8014ebeee27fbcd3feb84831fda47aea1d7185f92ddcbed15373909ea1";
      };
      r1 = {
        nix = import ../hackage/ghc-instances-0.1.0.1-r1-8c4b9d3dfc2b9e34064ac233242f8b4f813ba447d7a2191476e434d56b4d6f66.nix;
        revNum = 1;
        sha256 = "8c4b9d3dfc2b9e34064ac233242f8b4f813ba447d7a2191476e434d56b4d6f66";
      };
      default = "r1";
    };
  };
}