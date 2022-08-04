{
  "0.0.1.0" = {
    sha256 = "20ccf29d153080f01c3c28cd8666f1e87e950b4c8cb9cd2b58d3a489b2af8868";
    revisions = {
      r0 = {
        nix = import ../hackage/hasktorch-codegen-0.0.1.0-r0-33cde65d32165f24244ce743d700fbbb3d324ab7d37f962a677b30afe0350aed.nix;
        revNum = 0;
        sha256 = "33cde65d32165f24244ce743d700fbbb3d324ab7d37f962a677b30afe0350aed";
        };
      r1 = {
        nix = import ../hackage/hasktorch-codegen-0.0.1.0-r1-1fa5f65960a445a259f8f5634a09f84c8ebdca4053ce860b100e743ebed619a5.nix;
        revNum = 1;
        sha256 = "1fa5f65960a445a259f8f5634a09f84c8ebdca4053ce860b100e743ebed619a5";
        };
      default = "r1";
      };
    };
  "0.0.1.1" = {
    sha256 = "cfac2e7463258b87f3e98a792f929df9f8126dde24fd8f73f7b6a67878e8cf7b";
    revisions = {
      r0 = {
        nix = import ../hackage/hasktorch-codegen-0.0.1.1-r0-3ebf7e93361b5007304a1b8d0a6eb83b9bebca65d39d245c57d70fc38313e9ff.nix;
        revNum = 0;
        sha256 = "3ebf7e93361b5007304a1b8d0a6eb83b9bebca65d39d245c57d70fc38313e9ff";
        };
      r1 = {
        nix = import ../hackage/hasktorch-codegen-0.0.1.1-r1-f09a6a7cde5974771321657ffc15f316c159d2ccddd73afc5e3d6edf2b8fc91f.nix;
        revNum = 1;
        sha256 = "f09a6a7cde5974771321657ffc15f316c159d2ccddd73afc5e3d6edf2b8fc91f";
        };
      default = "r1";
      };
    };
  }