{
  "0.0.1.0" = {
    sha256 = "7d086c3bc6b58ad4f781070c80f37c5ae20e2a0840a08512488b538c48336957";
    revisions = {
      r0 = {
        nix = import ../hackage/tilia-0.0.1.0-r0-cc0915e997febe7eb9e5353fe3f10c6d2488cdcfe700284d19e809bb13d0f43c.nix;
        revNum = 0;
        sha256 = "cc0915e997febe7eb9e5353fe3f10c6d2488cdcfe700284d19e809bb13d0f43c";
      };
      r1 = {
        nix = import ../hackage/tilia-0.0.1.0-r1-8176f744b9ea6d00b6ae39e128ed316bb4c985aa78531e5f693a0b3b0341e044.nix;
        revNum = 1;
        sha256 = "8176f744b9ea6d00b6ae39e128ed316bb4c985aa78531e5f693a0b3b0341e044";
      };
      r2 = {
        nix = import ../hackage/tilia-0.0.1.0-r2-65076b8fa3d46bb7d5dd8e425e0b62b1add44fffaef557d15b29e5a722e41986.nix;
        revNum = 2;
        sha256 = "65076b8fa3d46bb7d5dd8e425e0b62b1add44fffaef557d15b29e5a722e41986";
      };
      default = "r2";
    };
  };
}