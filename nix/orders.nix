{
  "0.1.0.0" = {
    sha256 = "f9d34b503516bf1bb0119ff12be4e81d78d2bc3a66e2797ba070405d1e75c6e7";
    revisions = {
      r0 = {
        nix = import ../hackage/orders-0.1.0.0-r0-11b6e738e9b5a4a901d5218440ed70ef3bc2d9f225d416c02fa57092e40253ae.nix;
        revNum = 0;
        sha256 = "11b6e738e9b5a4a901d5218440ed70ef3bc2d9f225d416c02fa57092e40253ae";
        };
      r1 = {
        nix = import ../hackage/orders-0.1.0.0-r1-5251d17b30a8c112f723f3ce1108d7982fa77d4ae40940aa27b79f444b7a9ec6.nix;
        revNum = 1;
        sha256 = "5251d17b30a8c112f723f3ce1108d7982fa77d4ae40940aa27b79f444b7a9ec6";
        };
      default = "r1";
      };
    };
  }