{
  "1.0.0.0" = {
    sha256 = "8feb4d8122708f7edf39a3cc39ee728a64aabb1058a2fabc60f3de2be79a3724";
    revisions = {
      r0 = {
        nix = import ../hackage/conferer-yaml-1.0.0.0-r0-601cab926e009325b4b5351a0b1704999faefe5ab6b3996c7399aeffe23d7fdd.nix;
        revNum = 0;
        sha256 = "601cab926e009325b4b5351a0b1704999faefe5ab6b3996c7399aeffe23d7fdd";
      };
      r1 = {
        nix = import ../hackage/conferer-yaml-1.0.0.0-r1-d5be2faa84f8913ea00802bcaaa5aa5178e50913ea5bf9b70dfcdf79e2126ffc.nix;
        revNum = 1;
        sha256 = "d5be2faa84f8913ea00802bcaaa5aa5178e50913ea5bf9b70dfcdf79e2126ffc";
      };
      default = "r1";
    };
  };
  "1.1.0.0" = {
    sha256 = "19709e780654a8e7563e8a726ceb674b4ea8cd62e716a373dc26c9a915e71d5f";
    revisions = {
      r0 = {
        nix = import ../hackage/conferer-yaml-1.1.0.0-r0-a47f6cdc24e284e5f3bd58e20e00a1acc2f74332ee8624239723adfaa5545372.nix;
        revNum = 0;
        sha256 = "a47f6cdc24e284e5f3bd58e20e00a1acc2f74332ee8624239723adfaa5545372";
      };
      r1 = {
        nix = import ../hackage/conferer-yaml-1.1.0.0-r1-2e3fa4f8700f2d584e32dc588eceb946f29af296eb9e506d34eaef882e178253.nix;
        revNum = 1;
        sha256 = "2e3fa4f8700f2d584e32dc588eceb946f29af296eb9e506d34eaef882e178253";
      };
      default = "r1";
    };
  };
}