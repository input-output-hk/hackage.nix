{
  "0.1.0" = {
    sha256 = "30477167a2d6859130eba5b61720ae7fde37a707f3f5f7f95101e73ccac7a95f";
    revisions = {
      r0 = {
        nix = import ../hackage/eventium-sql-common-0.1.0-r0-d59365380517742e7913cb7a7a997291058681ed68fa8c1f8627899099299ccb.nix;
        revNum = 0;
        sha256 = "d59365380517742e7913cb7a7a997291058681ed68fa8c1f8627899099299ccb";
      };
      default = "r0";
    };
  };
  "0.2.1" = {
    sha256 = "26d33e41e325c383cb61cab1ca02e2b08629b8ebf3b55e84c59c00f5a59446e3";
    revisions = {
      r0 = {
        nix = import ../hackage/eventium-sql-common-0.2.1-r0-7696c38b3565f31c5878e938256edb7abf03ebdf3f7a04f146a78189ba63ba36.nix;
        revNum = 0;
        sha256 = "7696c38b3565f31c5878e938256edb7abf03ebdf3f7a04f146a78189ba63ba36";
      };
      default = "r0";
    };
  };
}