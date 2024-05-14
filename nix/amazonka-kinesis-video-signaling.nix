{
  "2.0" = {
    sha256 = "962ef8a63a62473bc591d61c6949c2e7383aa42dcc5892f73200a63ac62d4276";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-kinesis-video-signaling-2.0-r0-6ee492d376169c7e28d06b32321f073016cafca25394569356624cc162deea1f.nix;
        revNum = 0;
        sha256 = "6ee492d376169c7e28d06b32321f073016cafca25394569356624cc162deea1f";
      };
      r1 = {
        nix = import ../hackage/amazonka-kinesis-video-signaling-2.0-r1-42d7da867898ce73b7c7b61af475a6fdf364c9d820e21b1ff5a94e6698f1263e.nix;
        revNum = 1;
        sha256 = "42d7da867898ce73b7c7b61af475a6fdf364c9d820e21b1ff5a94e6698f1263e";
      };
      default = "r1";
    };
  };
}