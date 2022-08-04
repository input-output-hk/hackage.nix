{
  "0.1.0.0" = {
    sha256 = "713e804638810eb5e0cd16bb6b47fbef218ac5e902772a024b70d71c8bb6ef22";
    revisions = {
      r0 = {
        nix = import ../hackage/welshy-0.1.0.0-r0-ecd5c41f004f7420631b311a6aafcc139ced287d8f74d44a6f8b7baa8788c123.nix;
        revNum = 0;
        sha256 = "ecd5c41f004f7420631b311a6aafcc139ced287d8f74d44a6f8b7baa8788c123";
        };
      r1 = {
        nix = import ../hackage/welshy-0.1.0.0-r1-ff6973a67b742efb8d7c1d542ba9f27056de3e547ade96d33e9b68314afec22c.nix;
        revNum = 1;
        sha256 = "ff6973a67b742efb8d7c1d542ba9f27056de3e547ade96d33e9b68314afec22c";
        };
      default = "r1";
      };
    };
  }