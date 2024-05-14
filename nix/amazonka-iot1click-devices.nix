{
  "2.0" = {
    sha256 = "038427b50f1aadd2a40bd8f2d19238d701b8f7f986c0d3118cd80dba28e89d92";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-iot1click-devices-2.0-r0-e5644f49365989be3ae98745e4c518fd7ca0d041324959899dfdb9ef7d913cfa.nix;
        revNum = 0;
        sha256 = "e5644f49365989be3ae98745e4c518fd7ca0d041324959899dfdb9ef7d913cfa";
      };
      r1 = {
        nix = import ../hackage/amazonka-iot1click-devices-2.0-r1-c1898fa46f503be6b5b1e4de46e63c574a69402da8202ec34b36225371da243e.nix;
        revNum = 1;
        sha256 = "c1898fa46f503be6b5b1e4de46e63c574a69402da8202ec34b36225371da243e";
      };
      default = "r1";
    };
  };
}