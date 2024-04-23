{
  "0.1.0.0" = {
    sha256 = "8c3b5184d5d6056433d51a49c5402e4ab7b0260073d5342685b8e141d2be5a01";
    revisions = {
      r0 = {
        nix = import ../hackage/dictionary-sharing-0.1.0.0-r0-27369dafe7941ccb1dfc470d5bb7fa5cf294509a3375ce32110ea256bf78c43b.nix;
        revNum = 0;
        sha256 = "27369dafe7941ccb1dfc470d5bb7fa5cf294509a3375ce32110ea256bf78c43b";
      };
      r1 = {
        nix = import ../hackage/dictionary-sharing-0.1.0.0-r1-c31820b9f425319d5a0665b7ec4938ad47d214c9281684e7463011e37e5a45f6.nix;
        revNum = 1;
        sha256 = "c31820b9f425319d5a0665b7ec4938ad47d214c9281684e7463011e37e5a45f6";
      };
      r2 = {
        nix = import ../hackage/dictionary-sharing-0.1.0.0-r2-71d347366e563d81041dc8b9c226a53bd98e2ba3774e17cacbd84d3726c3ab5f.nix;
        revNum = 2;
        sha256 = "71d347366e563d81041dc8b9c226a53bd98e2ba3774e17cacbd84d3726c3ab5f";
      };
      r3 = {
        nix = import ../hackage/dictionary-sharing-0.1.0.0-r3-6990c4cb6e5c7fd2b3c545576accc2c00a56cdc52ffe646f70680d781893c7d6.nix;
        revNum = 3;
        sha256 = "6990c4cb6e5c7fd2b3c545576accc2c00a56cdc52ffe646f70680d781893c7d6";
      };
      default = "r3";
    };
  };
}