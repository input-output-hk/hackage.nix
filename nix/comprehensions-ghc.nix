{
  "0.1.0.0" = {
    sha256 = "463edd1da40637015934729802ea5b89162869ffe2eaa8c1645cd484a2853437";
    revisions = {
      r0 = {
        nix = import ../hackage/comprehensions-ghc-0.1.0.0-r0-3444d2324fd4347bf0ff9310e932f984749abe2fe771c536ffd04a14778ab36d.nix;
        revNum = 0;
        sha256 = "3444d2324fd4347bf0ff9310e932f984749abe2fe771c536ffd04a14778ab36d";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "75699fd6bb576a05f79e1a90f8dbaad14cbc6cb02530fa92efb6e95d131e4813";
    revisions = {
      r0 = {
        nix = import ../hackage/comprehensions-ghc-0.1.0.1-r0-5ce74b2abf45f32b805ea811aaa5a25833a5dbb47b0950d9d065041e11ac80ee.nix;
        revNum = 0;
        sha256 = "5ce74b2abf45f32b805ea811aaa5a25833a5dbb47b0950d9d065041e11ac80ee";
        };
      r1 = {
        nix = import ../hackage/comprehensions-ghc-0.1.0.1-r1-a0676358785f6563fff57c9480d0736896350ec2eb1534954879442d3652c346.nix;
        revNum = 1;
        sha256 = "a0676358785f6563fff57c9480d0736896350ec2eb1534954879442d3652c346";
        };
      default = "r1";
      };
    };
  }