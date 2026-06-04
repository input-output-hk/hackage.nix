{
  "0.1.0.0" = {
    sha256 = "4701f39a220e3b4258b01492e257d98b746e1481d57b99b0c46eb9af4cfd92a4";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-build-stats-plugin-0.1.0.0-r0-835e5402f66b7ee1a25be4669d3f266861b5230aae9e16a76ff01ebf3c5a87c6.nix;
        revNum = 0;
        sha256 = "835e5402f66b7ee1a25be4669d3f266861b5230aae9e16a76ff01ebf3c5a87c6";
      };
      r1 = {
        nix = import ../hackage/ghc-build-stats-plugin-0.1.0.0-r1-1bdd9cc967cff2f5ee0c93594655d133f9e0415575b88466b3125e26ea830baa.nix;
        revNum = 1;
        sha256 = "1bdd9cc967cff2f5ee0c93594655d133f9e0415575b88466b3125e26ea830baa";
      };
      default = "r1";
    };
  };
}