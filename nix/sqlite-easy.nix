{
  "0.1.0.0" = {
    sha256 = "ae80a574ba886e2530a8175d6d0b99fe21cea81b85ad0e99a9b737ed760b2745";
    revisions = {
      r0 = {
        nix = import ../hackage/sqlite-easy-0.1.0.0-r0-58bddaf1d851edafc3d64c012e21c78866d68c308b8df3884b90ddc0469337a6.nix;
        revNum = 0;
        sha256 = "58bddaf1d851edafc3d64c012e21c78866d68c308b8df3884b90ddc0469337a6";
        };
      r1 = {
        nix = import ../hackage/sqlite-easy-0.1.0.0-r1-88277805de6e038d4c8498e90bad639e5f1cc7a2deb6a7af7c828d5941507a2c.nix;
        revNum = 1;
        sha256 = "88277805de6e038d4c8498e90bad639e5f1cc7a2deb6a7af7c828d5941507a2c";
        };
      default = "r1";
      };
    };
  }