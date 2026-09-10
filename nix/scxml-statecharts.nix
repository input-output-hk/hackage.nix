{
  "0.1.0.0" = {
    sha256 = "77359e945ec7727e47b4e5f1928aed40b785c495a58e5be65f61fda279ad9966";
    revisions = {
      r0 = {
        nix = import ../hackage/scxml-statecharts-0.1.0.0-r0-12c1763b646f2560e79ae060eaaa0e8b112180c7357bee2c2b016f4be5f72368.nix;
        revNum = 0;
        sha256 = "12c1763b646f2560e79ae060eaaa0e8b112180c7357bee2c2b016f4be5f72368";
      };
      r1 = {
        nix = import ../hackage/scxml-statecharts-0.1.0.0-r1-0b65fa39ee1c6579467f2369587f12c8b3ff065c546f33730b3e7cc879faa3b6.nix;
        revNum = 1;
        sha256 = "0b65fa39ee1c6579467f2369587f12c8b3ff065c546f33730b3e7cc879faa3b6";
      };
      default = "r1";
    };
  };
}