{
  "0.6" = {
    sha256 = "94c2695699811dfdc84a4fb4352bda5d5086134d92695cd0c2ec8f913267c873";
    revisions = {
      r0 = {
        nix = import ../hackage/scholdoc-citeproc-0.6-r0-09b79664d324a4056df736bd571f735d45fc14e433ef3305b680a5992dc29d45.nix;
        revNum = 0;
        sha256 = "09b79664d324a4056df736bd571f735d45fc14e433ef3305b680a5992dc29d45";
      };
      r1 = {
        nix = import ../hackage/scholdoc-citeproc-0.6-r1-33a066de8000d8bdb0a8f04f71baca64e27f4a2bb2d2a330f6d5a7f81090b118.nix;
        revNum = 1;
        sha256 = "33a066de8000d8bdb0a8f04f71baca64e27f4a2bb2d2a330f6d5a7f81090b118";
      };
      default = "r1";
    };
  };
}