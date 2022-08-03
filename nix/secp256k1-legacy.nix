{
  "0.5.4" = {
    sha256 = "4d9bdd13b2ebc136238e8130b7cd94e0cbb2316ba8136852090d521e93e0a0ea";
    revisions = {
      r0 = {
        nix = import ../hackage/secp256k1-legacy-0.5.4-r0-dcf5caac6a59a1db89312cf9e735ff6a0fe0bccdb69e3a471f3eb1bc9317849c.nix;
        revNum = 0;
        sha256 = "dcf5caac6a59a1db89312cf9e735ff6a0fe0bccdb69e3a471f3eb1bc9317849c";
        };
      default = "r0";
      };
    };
  "0.5.5" = {
    sha256 = "4d243326987e9874557b041d8e743ecdcd78aee59cbb8868a7a92df68dd81ff3";
    revisions = {
      r0 = {
        nix = import ../hackage/secp256k1-legacy-0.5.5-r0-7d7bee5f9119c1d3cda2c4956c5bc70a0e95c93b99c00018e5759434bce01e4f.nix;
        revNum = 0;
        sha256 = "7d7bee5f9119c1d3cda2c4956c5bc70a0e95c93b99c00018e5759434bce01e4f";
        };
      default = "r0";
      };
    };
  "0.5.6" = {
    sha256 = "7f514d99d05f3a63399cb328fdf8bc2016f9068f7642d67249ccc110c0b9f35c";
    revisions = {
      r0 = {
        nix = import ../hackage/secp256k1-legacy-0.5.6-r0-6cf5bc705cb575bb13cdccba6f8baac87dce10c093f68bc1fb9ad8bb27d32b6a.nix;
        revNum = 0;
        sha256 = "6cf5bc705cb575bb13cdccba6f8baac87dce10c093f68bc1fb9ad8bb27d32b6a";
        };
      r1 = {
        nix = import ../hackage/secp256k1-legacy-0.5.6-r1-f5354ffc5fcce687bccf068caaa5c873bf7781f247b9bdd9d6385ce3aeb7e23b.nix;
        revNum = 1;
        sha256 = "f5354ffc5fcce687bccf068caaa5c873bf7781f247b9bdd9d6385ce3aeb7e23b";
        };
      default = "r1";
      };
    };
  }