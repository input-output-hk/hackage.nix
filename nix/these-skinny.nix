{
  "0.7.4" = {
    sha256 = "79dae5785ca26768925e31f020ef2259ad7df46608df54bf073ea51c49729d42";
    revisions = {
      r0 = {
        nix = import ../hackage/these-skinny-0.7.4-r0-933d18be91eb5eeb2402de5820485838c374c64b3e8ccad8dea253321d61bebc.nix;
        revNum = 0;
        sha256 = "933d18be91eb5eeb2402de5820485838c374c64b3e8ccad8dea253321d61bebc";
        };
      r1 = {
        nix = import ../hackage/these-skinny-0.7.4-r1-cc4c19e8ff2a2641a98b77884f040d37691e05c8137c5c2c1b04b2c2567bf014.nix;
        revNum = 1;
        sha256 = "cc4c19e8ff2a2641a98b77884f040d37691e05c8137c5c2c1b04b2c2567bf014";
        };
      r2 = {
        nix = import ../hackage/these-skinny-0.7.4-r2-e29336a1a70a497e09d8266f8438efb30a807bafaa6b00f5a136f7493efb3160.nix;
        revNum = 2;
        sha256 = "e29336a1a70a497e09d8266f8438efb30a807bafaa6b00f5a136f7493efb3160";
        };
      default = "r2";
      };
    };
  "0.7.5" = {
    sha256 = "726933193bb33d9731a2ed794c07c3ff8952fb0baef5ebbd7dc3b2a3e5746cd9";
    revisions = {
      r0 = {
        nix = import ../hackage/these-skinny-0.7.5-r0-280f14b4f599536d19f64afbf5ff5bd57b1ac1d9255013952d22404537bb023c.nix;
        revNum = 0;
        sha256 = "280f14b4f599536d19f64afbf5ff5bd57b1ac1d9255013952d22404537bb023c";
        };
      default = "r0";
      };
    };
  }