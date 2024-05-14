{
  "2.0" = {
    sha256 = "27c293a1714951bda500820dde728036dbb33b4507c2cfe8495dd39fcbb70285";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-auditmanager-2.0-r0-65a10afff42c8f7e762d1043013e50d4a8b370b4a320ba1087c88f78577c4eae.nix;
        revNum = 0;
        sha256 = "65a10afff42c8f7e762d1043013e50d4a8b370b4a320ba1087c88f78577c4eae";
      };
      r1 = {
        nix = import ../hackage/amazonka-auditmanager-2.0-r1-894970a39fda7a0a773c27f04591839a2d57016b9d1614b22d1b5179c9c3cb9d.nix;
        revNum = 1;
        sha256 = "894970a39fda7a0a773c27f04591839a2d57016b9d1614b22d1b5179c9c3cb9d";
      };
      default = "r1";
    };
  };
}