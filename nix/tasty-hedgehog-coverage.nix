{
  "0.1.0.0" = {
    sha256 = "aca46bf8073a7b73a95bed3562710f0046a29cb15a0ec36507339c7927b450b4";
    revisions = {
      r0 = {
        nix = import ../hackage/tasty-hedgehog-coverage-0.1.0.0-r0-6bb18da600213fe1d84152c938ac80cea68557d165f2fda5bcb38439ec874418.nix;
        revNum = 0;
        sha256 = "6bb18da600213fe1d84152c938ac80cea68557d165f2fda5bcb38439ec874418";
      };
      r1 = {
        nix = import ../hackage/tasty-hedgehog-coverage-0.1.0.0-r1-4e90190de0a5cb8ce16844b1f5d566438e7dad42aad4b425b52e0d4c044f6ddc.nix;
        revNum = 1;
        sha256 = "4e90190de0a5cb8ce16844b1f5d566438e7dad42aad4b425b52e0d4c044f6ddc";
      };
      r2 = {
        nix = import ../hackage/tasty-hedgehog-coverage-0.1.0.0-r2-9db2673fbdfcaf12367b7853c95cebd4f5b307dafee1a2d768fe8564159ddf81.nix;
        revNum = 2;
        sha256 = "9db2673fbdfcaf12367b7853c95cebd4f5b307dafee1a2d768fe8564159ddf81";
      };
      default = "r2";
    };
  };
}