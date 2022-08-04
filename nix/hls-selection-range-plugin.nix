{
  "1.0.0.0" = {
    sha256 = "c04e4a53c77369f6ae0bdea9d9deca84b99b4903cc9eddbb7a28636fcfefcfdd";
    revisions = {
      r0 = {
        nix = import ../hackage/hls-selection-range-plugin-1.0.0.0-r0-ce228ed70466e1a2021c4cc436a2c210689e395d34e559e97f1291a4b2d6c024.nix;
        revNum = 0;
        sha256 = "ce228ed70466e1a2021c4cc436a2c210689e395d34e559e97f1291a4b2d6c024";
        };
      r1 = {
        nix = import ../hackage/hls-selection-range-plugin-1.0.0.0-r1-db9ecc404b8a4288477aa184b242878363af090ee8aed71df0affcf4c31558da.nix;
        revNum = 1;
        sha256 = "db9ecc404b8a4288477aa184b242878363af090ee8aed71df0affcf4c31558da";
        };
      default = "r1";
      };
    };
  }