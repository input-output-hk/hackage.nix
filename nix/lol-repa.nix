{
  "0.0.0.1" = {
    sha256 = "c175e5881ee98795a0e24adde1a7c1955102b5723048d540389f773fff239b98";
    revisions = {
      r0 = {
        nix = import ../hackage/lol-repa-0.0.0.1-r0-387f8f73be09c240d8e325534a96402ad164db1751da9534d7ed87e227afd132.nix;
        revNum = 0;
        sha256 = "387f8f73be09c240d8e325534a96402ad164db1751da9534d7ed87e227afd132";
        };
      r1 = {
        nix = import ../hackage/lol-repa-0.0.0.1-r1-6082d774d54e60d6e57db0dd2038df69bb8d27f8ecccca1cfa593aa4b36b869e.nix;
        revNum = 1;
        sha256 = "6082d774d54e60d6e57db0dd2038df69bb8d27f8ecccca1cfa593aa4b36b869e";
        };
      default = "r1";
      };
    };
  "0.0.0.2" = {
    sha256 = "9545c89813d53d928ba6da0ef24118f6a80c01525d05963b6e8b1399bd3e91a4";
    revisions = {
      r0 = {
        nix = import ../hackage/lol-repa-0.0.0.2-r0-a0152515cc615ba621f4100ad12b329e8f61a6adc4d457c7616da913318ce197.nix;
        revNum = 0;
        sha256 = "a0152515cc615ba621f4100ad12b329e8f61a6adc4d457c7616da913318ce197";
        };
      default = "r0";
      };
    };
  }