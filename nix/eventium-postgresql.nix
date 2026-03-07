{
  "0.1.0" = {
    sha256 = "83693960242285122f636c47de8044d540ccefc9c8439ee6ac62832c54113133";
    revisions = {
      r0 = {
        nix = import ../hackage/eventium-postgresql-0.1.0-r0-19a2492ea38ee122c58d957b90d9e7e73c5c1d6c0f0265cc891dc795dc19f199.nix;
        revNum = 0;
        sha256 = "19a2492ea38ee122c58d957b90d9e7e73c5c1d6c0f0265cc891dc795dc19f199";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "36066fd461fffb7f4c8e439e79fac47730cab28563f1604be2d31e8562b98d07";
    revisions = {
      r0 = {
        nix = import ../hackage/eventium-postgresql-0.2.1-r0-0182fcce318b58ac4378a2c8fb24f99f35956ec7a2ce77f8f29f3341ab884cfb.nix;
        revNum = 0;
        sha256 = "0182fcce318b58ac4378a2c8fb24f99f35956ec7a2ce77f8f29f3341ab884cfb";
      };
      default = "r0";
    };
  };
}