{
  "1.0.1" = {
    sha256 = "e3e2efcd85e9250cf682f16e65e89261724fb8fecd50d6133c38be635c909eeb";
    revisions = {
      r0 = {
        nix = import ../hackage/flippers-1.0.1-r0-012f2ae597271cedd540f4e2251bde07fe52b37af0c0ed6d901564f260502dfe.nix;
        revNum = 0;
        sha256 = "012f2ae597271cedd540f4e2251bde07fe52b37af0c0ed6d901564f260502dfe";
        };
      r1 = {
        nix = import ../hackage/flippers-1.0.1-r1-e908ada5c891a6ac39cefb7e41648606d1a5f1b1048281f93bd496c5f22d73b4.nix;
        revNum = 1;
        sha256 = "e908ada5c891a6ac39cefb7e41648606d1a5f1b1048281f93bd496c5f22d73b4";
        };
      default = "r1";
      };
    };
  }