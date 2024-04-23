{
  "1.0.0.0" = {
    sha256 = "cbed0e998339dbac8f1d55cb1345f4dbd340b7c22ff112e40390cdfa7250d87d";
    revisions = {
      r0 = {
        nix = import ../hackage/hgdal-1.0.0.0-r0-50740e0cc7061a9c2010bd9dc532ef73e9ba3ce116286fe41eab41daf38fe6e5.nix;
        revNum = 0;
        sha256 = "50740e0cc7061a9c2010bd9dc532ef73e9ba3ce116286fe41eab41daf38fe6e5";
      };
      default = "r0";
    };
  };
  "1.0.0.1" = {
    sha256 = "c5d604f0b4e79c2539ca777c01f388a04e5439e0c54f103f5d30ba5a82c84edc";
    revisions = {
      r0 = {
        nix = import ../hackage/hgdal-1.0.0.1-r0-a8e024bc25fb75c42fcfa4132842568f21211f08a1883046bf70828d8787b0ac.nix;
        revNum = 0;
        sha256 = "a8e024bc25fb75c42fcfa4132842568f21211f08a1883046bf70828d8787b0ac";
      };
      default = "r0";
    };
  };
}