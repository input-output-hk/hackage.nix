{
  "0.1.0.0" = {
    sha256 = "2e5087b63a5384a6219ae07aff2b68add2b9b94d5e1266ed2bc60ad72a422565";
    revisions = {
      r0 = {
        nix = import ../hackage/pr-tools-0.1.0.0-r0-41d0dddf5ea4bea48fba1690a592fd86598562bec249d914f9061b5ce87eb77b.nix;
        revNum = 0;
        sha256 = "41d0dddf5ea4bea48fba1690a592fd86598562bec249d914f9061b5ce87eb77b";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "1c812643b2ef31a3d9a8f7fff28eb990b0ae35ce6befc40714d3124b2676324c";
    revisions = {
      r0 = {
        nix = import ../hackage/pr-tools-0.2.0.0-r0-70d7685d73fe54856b38f902c3f4a9b387dd32172fac60287627fd26b9b4fccb.nix;
        revNum = 0;
        sha256 = "70d7685d73fe54856b38f902c3f4a9b387dd32172fac60287627fd26b9b4fccb";
      };
      default = "r0";
    };
  };
}