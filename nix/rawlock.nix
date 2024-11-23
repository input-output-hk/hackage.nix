{
  "0.1.0.0" = {
    sha256 = "1cecb19f4b881dfceec17df9afec31952e7851b500d227dad731b09ee640d01e";
    revisions = {
      r0 = {
        nix = import ../hackage/rawlock-0.1.0.0-r0-ed9b6c6511e653b172d9353d4ed4c84b709145fe53e3164cc5d99f8da5a88cf7.nix;
        revNum = 0;
        sha256 = "ed9b6c6511e653b172d9353d4ed4c84b709145fe53e3164cc5d99f8da5a88cf7";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "f2eb327e826de3c8419361aa6d0641c752c1f7cccd5f70eabf3c72934115a6c1";
    revisions = {
      r0 = {
        nix = import ../hackage/rawlock-0.1.1.0-r0-b1c301f20b98e21ff8d4a10ed689abb6153eb7d38a8c9c86651d932ebb2e739c.nix;
        revNum = 0;
        sha256 = "b1c301f20b98e21ff8d4a10ed689abb6153eb7d38a8c9c86651d932ebb2e739c";
      };
      r1 = {
        nix = import ../hackage/rawlock-0.1.1.0-r1-30fea5a44ed6226c646638ff5a44c1877a282742d39023ea03c5f00fb97387bf.nix;
        revNum = 1;
        sha256 = "30fea5a44ed6226c646638ff5a44c1877a282742d39023ea03c5f00fb97387bf";
      };
      default = "r1";
    };
  };
}