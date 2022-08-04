{
  "0.1.0.0" = {
    sha256 = "602df3463f556cfff5b3784b7b49f0548768f11e7651175fae1028f4565faaba";
    revisions = {
      r0 = {
        nix = import ../hackage/intro-prelude-0.1.0.0-r0-0efa4c65ccfa1af759e17f530a5f2aa691d4bbf1e9702b8b657bad02cc1b3e6e.nix;
        revNum = 0;
        sha256 = "0efa4c65ccfa1af759e17f530a5f2aa691d4bbf1e9702b8b657bad02cc1b3e6e";
        };
      r1 = {
        nix = import ../hackage/intro-prelude-0.1.0.0-r1-a6ffadd4b02b26ea9170eae2f37ee3f5af32cb128a3c1d1099b34b86daec5de6.nix;
        revNum = 1;
        sha256 = "a6ffadd4b02b26ea9170eae2f37ee3f5af32cb128a3c1d1099b34b86daec5de6";
        };
      default = "r1";
      };
    };
  }