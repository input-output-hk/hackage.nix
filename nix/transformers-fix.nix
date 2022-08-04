{
  "1.0" = {
    sha256 = "65d1fff36b844d8ac22d47eb47e2c7e9d7ece54fafeeca4d4e38a08910be4a09";
    revisions = {
      r0 = {
        nix = import ../hackage/transformers-fix-1.0-r0-3c3e62b9c71e115a899d40c1b09e486efb0cd60d4490a0aba9b0848c978d19e2.nix;
        revNum = 0;
        sha256 = "3c3e62b9c71e115a899d40c1b09e486efb0cd60d4490a0aba9b0848c978d19e2";
        };
      r1 = {
        nix = import ../hackage/transformers-fix-1.0-r1-3ab318ba4202c92bf6dfc2e93d957ef224ab2660a7d3654dab825c89b2f4cf88.nix;
        revNum = 1;
        sha256 = "3ab318ba4202c92bf6dfc2e93d957ef224ab2660a7d3654dab825c89b2f4cf88";
        };
      default = "r1";
      };
    };
  }