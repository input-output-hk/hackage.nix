{
  "0.0.3.6" = {
    sha256 = "9750d91c1e45f9a09a0d9fd6b47020dcea9d49de7cba5558a29ebf1a4e19d0f2";
    revisions = {
      r0 = {
        nix = import ../hackage/hackage-cli-0.0.3.6-r0-008ca8164bd5a803bc27e9f99d91c766174e4b35994e633fe7f8aa382840e861.nix;
        revNum = 0;
        sha256 = "008ca8164bd5a803bc27e9f99d91c766174e4b35994e633fe7f8aa382840e861";
        };
      r1 = {
        nix = import ../hackage/hackage-cli-0.0.3.6-r1-8022f7f0587df9774fc5299642aff356776700809683dbd9a48d45c3b32d4218.nix;
        revNum = 1;
        sha256 = "8022f7f0587df9774fc5299642aff356776700809683dbd9a48d45c3b32d4218";
        };
      default = "r1";
      };
    };
  }