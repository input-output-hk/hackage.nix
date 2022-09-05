{
  "1.0.0" = {
    sha256 = "a07a92ebc41ac5af31cce2b41c9dd311f92ca52e05c2aaea756aebdcceb00389";
    revisions = {
      r0 = {
        nix = import ../hackage/annah-1.0.0-r0-de1e4392841e212d9fa0baaaa38b9d196c343249f2984f7cbe95a7655ed539c2.nix;
        revNum = 0;
        sha256 = "de1e4392841e212d9fa0baaaa38b9d196c343249f2984f7cbe95a7655ed539c2";
        };
      r1 = {
        nix = import ../hackage/annah-1.0.0-r1-5efc3b335d09e9234f0854e8b1db362fb8937da97ea586445aeccd031e16c09c.nix;
        revNum = 1;
        sha256 = "5efc3b335d09e9234f0854e8b1db362fb8937da97ea586445aeccd031e16c09c";
        };
      default = "r1";
      };
    };
  }