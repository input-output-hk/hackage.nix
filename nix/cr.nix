{
  "1.0" = {
    sha256 = "cf6df10e99e31943a41a65f99ee46c8845b824fcbd1c4d93c6fbc97bb61cc393";
    revisions = {
      r0 = {
        nix = import ../hackage/cr-1.0-r0-bbbcea061db0b8f7b961c4ec6b8b30b710e6363ca102639cf0024f7197030fab.nix;
        revNum = 0;
        sha256 = "bbbcea061db0b8f7b961c4ec6b8b30b710e6363ca102639cf0024f7197030fab";
      };
      default = "r0";
    };
  };
  "1.1" = {
    sha256 = "1d0ce6f62ff06fc02d8df39d8a64b963f3311e21ed8775f9d2bcd00269570364";
    revisions = {
      r0 = {
        nix = import ../hackage/cr-1.1-r0-b16bd70ca8e0864459e20f583c09214f3bb15d1bfb5e5d5fb521fb69e41d3f52.nix;
        revNum = 0;
        sha256 = "b16bd70ca8e0864459e20f583c09214f3bb15d1bfb5e5d5fb521fb69e41d3f52";
      };
      default = "r0";
    };
  };
  "1.2" = {
    sha256 = "c1c637b26cd6994c1c3747edcf951c8f83994000201cd7b0f459e485ae87ec80";
    revisions = {
      r0 = {
        nix = import ../hackage/cr-1.2-r0-689d79ed91b15654fc4297d53bc4179e464d26ecba3fe24278f11f6657d68c0c.nix;
        revNum = 0;
        sha256 = "689d79ed91b15654fc4297d53bc4179e464d26ecba3fe24278f11f6657d68c0c";
      };
      default = "r0";
    };
  };
}