{
  "4.8.0.0" = {
    sha256 = "9febbf8349f27fa184c56959a01db2f78176bd534f103f6b1be0bb01b7fac360";
    revisions = {
      r0 = {
        nix = import ../hackage/xfconf-4.8.0.0-r0-6b93fedaa4406390990112b2223322e73f50dcf3c998d63d40b6f8a465bc8212.nix;
        revNum = 0;
        sha256 = "6b93fedaa4406390990112b2223322e73f50dcf3c998d63d40b6f8a465bc8212";
        };
      r1 = {
        nix = import ../hackage/xfconf-4.8.0.0-r1-ce4bb3ab326d8e4c0a4fc2576045b589305b12f7ca28b79a69fcc367c429d33c.nix;
        revNum = 1;
        sha256 = "ce4bb3ab326d8e4c0a4fc2576045b589305b12f7ca28b79a69fcc367c429d33c";
        };
      default = "r1";
      };
    };
  }