{
  "2.0" = {
    sha256 = "d35d24071c6ab5dfecc8d2e13e219e7d36a4e382e6700405026006b611858c66";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-lookoutequipment-2.0-r0-6e9debe5ccfbc4bdb8c9a02c8948d000d92f3257258a354274b0d2d2d9ec59a5.nix;
        revNum = 0;
        sha256 = "6e9debe5ccfbc4bdb8c9a02c8948d000d92f3257258a354274b0d2d2d9ec59a5";
      };
      r1 = {
        nix = import ../hackage/amazonka-lookoutequipment-2.0-r1-fad555b832fac569c28def703c2308c4b1af4c92ce17c427ac6f803a126c0da9.nix;
        revNum = 1;
        sha256 = "fad555b832fac569c28def703c2308c4b1af4c92ce17c427ac6f803a126c0da9";
      };
      default = "r1";
    };
  };
}