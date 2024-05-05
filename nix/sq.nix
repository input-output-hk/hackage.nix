{
  "0.0.1" = {
    sha256 = "3021b12d2e5d22f9b4f645099c948ddba6277057047836014541fc0d09d69e18";
    revisions = {
      r0 = {
        nix = import ../hackage/sq-0.0.1-r0-2ca356b6e6235b6fd8efca854141e168fddb51e9106964cc34a3e19d2f6fc607.nix;
        revNum = 0;
        sha256 = "2ca356b6e6235b6fd8efca854141e168fddb51e9106964cc34a3e19d2f6fc607";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "84a38d8e174d2effcd695480d68be87d9ca772aba64a5b984419a461937a252b";
    revisions = {
      r0 = {
        nix = import ../hackage/sq-0.0.2-r0-2e455fa2919998689c508b564871b666ff041216604b40993ceca2f4b9f2ccdf.nix;
        revNum = 0;
        sha256 = "2e455fa2919998689c508b564871b666ff041216604b40993ceca2f4b9f2ccdf";
      };
      default = "r0";
    };
  };
}