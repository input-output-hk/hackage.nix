{
  "0.1.0.0" = {
    sha256 = "9973cb0938d9d6713f9117793be9f0c79cdf92cb86d420714b4d8e49c013dc61";
    revisions = {
      r0 = {
        nix = import ../hackage/control-invariants-0.1.0.0-r0-63845b12aef1f75a9b0a1b5091fef1acc423b29b898515109f31513a47604d30.nix;
        revNum = 0;
        sha256 = "63845b12aef1f75a9b0a1b5091fef1acc423b29b898515109f31513a47604d30";
      };
      r1 = {
        nix = import ../hackage/control-invariants-0.1.0.0-r1-e3f351125e5090d24dd6b7795ae493473595d02e3c8a5221f8cb34e072ea1739.nix;
        revNum = 1;
        sha256 = "e3f351125e5090d24dd6b7795ae493473595d02e3c8a5221f8cb34e072ea1739";
      };
      default = "r1";
    };
  };
}