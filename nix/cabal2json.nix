{
  "0.0.0.0" = {
    sha256 = "f81bf0f399765f288b5687838517a8c1857ac1af9113c6b0cf8388414c3fbea5";
    revisions = {
      r0 = {
        nix = import ../hackage/cabal2json-0.0.0.0-r0-a3f396229ecea1b341241daf62bbf3328b6bfb996fc1e926f8d2d771ee0540ad.nix;
        revNum = 0;
        sha256 = "a3f396229ecea1b341241daf62bbf3328b6bfb996fc1e926f8d2d771ee0540ad";
      };
      r1 = {
        nix = import ../hackage/cabal2json-0.0.0.0-r1-a2c7bb6706cf162c75d794bf63de2473a2c92b31aaf47204ebb83b010d6cb5d3.nix;
        revNum = 1;
        sha256 = "a2c7bb6706cf162c75d794bf63de2473a2c92b31aaf47204ebb83b010d6cb5d3";
      };
      default = "r1";
    };
  };
}