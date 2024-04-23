{
  "0.1" = {
    sha256 = "5d80de0f569557113b2ac5f5d1ccaa8d22d2654ab8263f119f36039c87c17c99";
    revisions = {
      r0 = {
        nix = import ../hackage/yahoo-web-search-0.1-r0-dae499a0a62d5bbff1f94ad3637cb467902ceceefc2b3e9690ee9a9fd4e959dc.nix;
        revNum = 0;
        sha256 = "dae499a0a62d5bbff1f94ad3637cb467902ceceefc2b3e9690ee9a9fd4e959dc";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "93399fbcf15f5b621ad1d172278c7997a37a113384eb98604cffc349fa549818";
    revisions = {
      r0 = {
        nix = import ../hackage/yahoo-web-search-0.2-r0-74532d42b1d195ac576e5a07ad3dd27da8d66c3ef85740e9872ff316b2d2176c.nix;
        revNum = 0;
        sha256 = "74532d42b1d195ac576e5a07ad3dd27da8d66c3ef85740e9872ff316b2d2176c";
      };
      default = "r0";
    };
  };
}