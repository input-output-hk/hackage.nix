{
  "0.1" = {
    sha256 = "a2f52ec6d47aec56886d6dd4667be73aa05d8dcf80344786965554b2e29c030e";
    revisions = {
      r0 = {
        nix = import ../hackage/quiet-0.1-r0-c0f787132bde0c9e9713465b8afc64a99619b73c3a652e3236f7726460f2dc61.nix;
        revNum = 0;
        sha256 = "c0f787132bde0c9e9713465b8afc64a99619b73c3a652e3236f7726460f2dc61";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "118bf67379dce4737619998380e399acba306dc8a086a069d4a01d5694325e4c";
    revisions = {
      r0 = {
        nix = import ../hackage/quiet-0.2-r0-60bb3cb8dd4a225557351b6d622147a4e541f1564847e05a81621365a155ad6c.nix;
        revNum = 0;
        sha256 = "60bb3cb8dd4a225557351b6d622147a4e541f1564847e05a81621365a155ad6c";
      };
      default = "r0";
    };
  };
}