{
  "1.0" = {
    sha256 = "96f78cd971ff62f96715a444e8fec945134ccf83cd29e725f2504cc05247cf40";
    revisions = {
      r0 = {
        nix = import ../hackage/purenix-1.0-r0-e3729a516deeaef5aa953fdc5544fa64327159fa9597843fb144d1eaf29e8fc6.nix;
        revNum = 0;
        sha256 = "e3729a516deeaef5aa953fdc5544fa64327159fa9597843fb144d1eaf29e8fc6";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "6067a4d48137f0a4f0b537f698ca6177e1f4440a06565f2fb6498d68be55d3fc";
    revisions = {
      r0 = {
        nix = import ../hackage/purenix-1.1-r0-b636c38540b12d49c968810a4fb9b80b376d9aedc8827dc12c56a978bdfa7147.nix;
        revNum = 0;
        sha256 = "b636c38540b12d49c968810a4fb9b80b376d9aedc8827dc12c56a978bdfa7147";
        };
      default = "r0";
      };
    };
  }