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
  "0.2.0.0" = {
    sha256 = "c606c171187c1c90c83c80b7657580f77354ef4de2227f2bdb4102e8a9a990da";
    revisions = {
      r0 = {
        nix = import ../hackage/sqlite-easy-0.2.0.0-r0-6bedf6ae43c8f36b85d5142f607bbf70b12679d9aa1f6b3b8a2b26d22c6b9309.nix;
        revNum = 0;
        sha256 = "6bedf6ae43c8f36b85d5142f607bbf70b12679d9aa1f6b3b8a2b26d22c6b9309";
        };
      default = "r0";
      };
    };
  }