{
  "0.1" = {
    sha256 = "507933a0db66d36bcf74f2ff5c23340c57f7d71fa9a8f8ffb8b3d4748f42327d";
    revisions = {
      r0 = {
        nix = import ../hackage/th-letrec-0.1-r0-7680ba19418199a19780f2dc80f21e4935b11a22dd98493604c62ba9db135551.nix;
        revNum = 0;
        sha256 = "7680ba19418199a19780f2dc80f21e4935b11a22dd98493604c62ba9db135551";
        };
      r1 = {
        nix = import ../hackage/th-letrec-0.1-r1-c877bc092a80658fda470bccc92f160c611b8d45e57bd26877286633c174dcb8.nix;
        revNum = 1;
        sha256 = "c877bc092a80658fda470bccc92f160c611b8d45e57bd26877286633c174dcb8";
        };
      r2 = {
        nix = import ../hackage/th-letrec-0.1-r2-cf786ae0fed16b3a0720ca79a6bcc16cb8b5f16de7fe9b400fbb2b021dfeb738.nix;
        revNum = 2;
        sha256 = "cf786ae0fed16b3a0720ca79a6bcc16cb8b5f16de7fe9b400fbb2b021dfeb738";
        };
      default = "r2";
      };
    };
  }