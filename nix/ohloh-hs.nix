{
  "0.0.1" = {
    sha256 = "f54256a973fd3b21ae247054856b551d44a521d3903e84ecee97e0bfee913424";
    revisions = {
      r0 = {
        nix = import ../hackage/ohloh-hs-0.0.1-r0-89e63ba56cd12bae17397ab4579e7c490d53f5da9fcb0709a02b3758592853d2.nix;
        revNum = 0;
        sha256 = "89e63ba56cd12bae17397ab4579e7c490d53f5da9fcb0709a02b3758592853d2";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "d24339be4df9ac8dd7945a26d6fa1af19f1ae8871f0fa4fa5559ce593d117359";
    revisions = {
      r0 = {
        nix = import ../hackage/ohloh-hs-0.0.2-r0-05aa0dbac85e2a90703d712821dd06e56de2427f5c085ef582842ee7b22eb08d.nix;
        revNum = 0;
        sha256 = "05aa0dbac85e2a90703d712821dd06e56de2427f5c085ef582842ee7b22eb08d";
      };
      default = "r0";
    };
  };
}