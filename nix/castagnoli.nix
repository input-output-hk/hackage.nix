{
  "0.1.0.0" = {
    sha256 = "d2a108cb27d87aa22ba3a693b33706d300d2fdb9801f05eb2fbd520028b7bf82";
    revisions = {
      r0 = {
        nix = import ../hackage/castagnoli-0.1.0.0-r0-79b4b57290f3f09f77abf95b7d93d130dfbd73015c1f69cc0f24a449b159c327.nix;
        revNum = 0;
        sha256 = "79b4b57290f3f09f77abf95b7d93d130dfbd73015c1f69cc0f24a449b159c327";
        };
      r1 = {
        nix = import ../hackage/castagnoli-0.1.0.0-r1-24dc069fd4ebbed93aff844cfbbac18603e8051542727cb6a801b9452762e0fa.nix;
        revNum = 1;
        sha256 = "24dc069fd4ebbed93aff844cfbbac18603e8051542727cb6a801b9452762e0fa";
        };
      default = "r1";
      };
    };
  }