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
      default = "r1";
      };
    };
  }