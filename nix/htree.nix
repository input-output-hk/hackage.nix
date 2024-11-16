{
  "0.1.1.0" = {
    sha256 = "2d1ac083339a79a7f1607de0e6c05722819d64945fa83bc810b0f8876ce425d5";
    revisions = {
      r0 = {
        nix = import ../hackage/htree-0.1.1.0-r0-ea8e3a8f42df2496a126a873c681bb59f1fe8ca2880f6eba1ca14b5a59ead997.nix;
        revNum = 0;
        sha256 = "ea8e3a8f42df2496a126a873c681bb59f1fe8ca2880f6eba1ca14b5a59ead997";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "4e02534db0b7201ffc2adceb58ae69f37e9fc9e488f668c5cf900724c08e77e0";
    revisions = {
      r0 = {
        nix = import ../hackage/htree-0.2.0.0-r0-520edcab482725c95e14e347deb952b831706baa472684403bb5f7ee783e140f.nix;
        revNum = 0;
        sha256 = "520edcab482725c95e14e347deb952b831706baa472684403bb5f7ee783e140f";
      };
      default = "r0";
    };
  };
}