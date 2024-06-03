{
  "1.0.0" = {
    sha256 = "1c6e6fab021c2ccee5d86112fb1c0bd016d15e0cf70c489dae5fb5ec156ed9e2";
    revisions = {
      r0 = {
        nix = import ../hackage/semaphore-compat-1.0.0-r0-868694b09361e7c6756542bcdcfba68a9b8b93410c6798709e475abd3751afe7.nix;
        revNum = 0;
        sha256 = "868694b09361e7c6756542bcdcfba68a9b8b93410c6798709e475abd3751afe7";
      };
      r1 = {
        nix = import ../hackage/semaphore-compat-1.0.0-r1-8ed6242cab5b0e1a8c654424275ac178035d108dfe4d651053947790fcf83017.nix;
        revNum = 1;
        sha256 = "8ed6242cab5b0e1a8c654424275ac178035d108dfe4d651053947790fcf83017";
      };
      r2 = {
        nix = import ../hackage/semaphore-compat-1.0.0-r2-a8f76076a40409a36ee975970c53273c2089aec9d9ece8168dfc736dfec24b9d.nix;
        revNum = 2;
        sha256 = "a8f76076a40409a36ee975970c53273c2089aec9d9ece8168dfc736dfec24b9d";
      };
      r3 = {
        nix = import ../hackage/semaphore-compat-1.0.0-r3-2de5218cef72b8ef090bd7d0fd930ffa143242a120c62e013b5cf039858f1855.nix;
        revNum = 3;
        sha256 = "2de5218cef72b8ef090bd7d0fd930ffa143242a120c62e013b5cf039858f1855";
      };
      default = "r3";
    };
  };
}