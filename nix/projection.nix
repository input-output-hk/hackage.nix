{
  "0.1" = {
    sha256 = "8109a1ef47cec2f34dc3c8e04baa3ea121a73a0086f055757e1e71916ecb3f3d";
    revisions = {
      r0 = {
        nix = import ../hackage/projection-0.1-r0-3a25da6bcc9616e58ccc69058cdd12a2d88e7730c76b08585bf35b3420293b58.nix;
        revNum = 0;
        sha256 = "3a25da6bcc9616e58ccc69058cdd12a2d88e7730c76b08585bf35b3420293b58";
        };
      r1 = {
        nix = import ../hackage/projection-0.1-r1-805db4a9404200c6d8c00b7e96f95c9c71e3595b6601f75efed7237ad5bed30b.nix;
        revNum = 1;
        sha256 = "805db4a9404200c6d8c00b7e96f95c9c71e3595b6601f75efed7237ad5bed30b";
        };
      default = "r1";
      };
    };
  }