{
  "2.0" = {
    sha256 = "3131b51505c178137829b002e37404d5694054736148a69b21d0ee9ef7e493fa";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-lookoutvision-2.0-r0-fcb5771af47159f378db4c6663c82c56f96d168174e0f4cc4a0b107c27d3189e.nix;
        revNum = 0;
        sha256 = "fcb5771af47159f378db4c6663c82c56f96d168174e0f4cc4a0b107c27d3189e";
      };
      r1 = {
        nix = import ../hackage/amazonka-lookoutvision-2.0-r1-3d74cf04428b0c47385114d1878cf1116f2bdc316c35fc44831a9b85e9d0e4e3.nix;
        revNum = 1;
        sha256 = "3d74cf04428b0c47385114d1878cf1116f2bdc316c35fc44831a9b85e9d0e4e3";
      };
      default = "r1";
    };
  };
}