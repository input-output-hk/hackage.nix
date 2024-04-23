{
  "0.0.0.0" = {
    sha256 = "1fc9b5c3d40135bb66f96c8ddeb6f1518f7fb3d85bd8e1a8d0ced7f11268b344";
    revisions = {
      r0 = {
        nix = import ../hackage/plucky-0.0.0.0-r0-ba0882bb5efd5f90a90fe0bd90d6b27bad0c56e8317ab64335e2c1f342456560.nix;
        revNum = 0;
        sha256 = "ba0882bb5efd5f90a90fe0bd90d6b27bad0c56e8317ab64335e2c1f342456560";
      };
      r1 = {
        nix = import ../hackage/plucky-0.0.0.0-r1-4473a65bed60f70d3b2f25b7df76426a8ab5bfc65bd2b9181287a0c2a7d0b16b.nix;
        revNum = 1;
        sha256 = "4473a65bed60f70d3b2f25b7df76426a8ab5bfc65bd2b9181287a0c2a7d0b16b";
      };
      default = "r1";
    };
  };
  "0.0.0.1" = {
    sha256 = "ba2c8f94497b759aa4f573734ef47e858bf51087f464bbcba4b0fefd20fc6187";
    revisions = {
      r0 = {
        nix = import ../hackage/plucky-0.0.0.1-r0-9b08e180bf4af6d26ac4e04a2d5f6d4529cefd4e8a310283f817b55b72beef56.nix;
        revNum = 0;
        sha256 = "9b08e180bf4af6d26ac4e04a2d5f6d4529cefd4e8a310283f817b55b72beef56";
      };
      default = "r0";
    };
  };
}