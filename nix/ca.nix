{
  "0.0.0.1" = {
    sha256 = "c23b03db3fd8bc57f7e0879bb635e6d8d3985b73f655b90b362fdcb5de5d783a";
    revisions = {
      r0 = {
        nix = import ../hackage/ca-0.0.0.1-r0-2129ad80e3130a3c9536f105de1bef17f0bb11fce95fc0da73761355e9b44acd.nix;
        revNum = 0;
        sha256 = "2129ad80e3130a3c9536f105de1bef17f0bb11fce95fc0da73761355e9b44acd";
        };
      r1 = {
        nix = import ../hackage/ca-0.0.0.1-r1-bc13eba3a823b1fc16f26505e27ad75319f09cfc374be5aace981045a2ecf8e8.nix;
        revNum = 1;
        sha256 = "bc13eba3a823b1fc16f26505e27ad75319f09cfc374be5aace981045a2ecf8e8";
        };
      default = "r1";
      };
    };
  }