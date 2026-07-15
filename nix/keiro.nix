{
  "0.2.0.0" = {
    sha256 = "bed318432690812de64285d2f4661256482e0e2f5902e512a2c093280b2b06e4";
    revisions = {
      r0 = {
        nix = import ../hackage/keiro-0.2.0.0-r0-245ce3bf74760b614f74b2937a81ffb45ac1a8e5860740d5b24a9f14692c725e.nix;
        revNum = 0;
        sha256 = "245ce3bf74760b614f74b2937a81ffb45ac1a8e5860740d5b24a9f14692c725e";
      };
      default = "r0";
    };
  };
  "0.3.0.0" = {
    sha256 = "f0536f5f235a3d0b1787e443217f6ebbd657caa9c9332c0dbcfb5e7da850f9f4";
    revisions = {
      r0 = {
        nix = import ../hackage/keiro-0.3.0.0-r0-3c33dffe9ec2200602289cf433b34130b851908ea80c56b2c83980e47832a1ef.nix;
        revNum = 0;
        sha256 = "3c33dffe9ec2200602289cf433b34130b851908ea80c56b2c83980e47832a1ef";
      };
      default = "r0";
    };
  };
}