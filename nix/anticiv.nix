{
  "0.1.0.4" = {
    sha256 = "63803abd99b1df6ab5f0c06e2bc17d454886317d8f295aa6526f11c2545d3c4b";
    revisions = {
      r0 = {
        nix = import ../hackage/anticiv-0.1.0.4-r0-0f061ee67ccf38b532e2fe8bad96758079e12996e3b2506d3719fbe482af1f04.nix;
        revNum = 0;
        sha256 = "0f061ee67ccf38b532e2fe8bad96758079e12996e3b2506d3719fbe482af1f04";
        };
      default = "r0";
      };
    };
  "0.1.0.5" = {
    sha256 = "f03bbab75225647bbd53462bbaa9114e4994b07b59d7e3a85d4f3deaa750bd6b";
    revisions = {
      r0 = {
        nix = import ../hackage/anticiv-0.1.0.5-r0-405d257e624128b5fd40ff3ba28ad2555ec42b9068dbc74a2c9584ea97785443.nix;
        revNum = 0;
        sha256 = "405d257e624128b5fd40ff3ba28ad2555ec42b9068dbc74a2c9584ea97785443";
        };
      r1 = {
        nix = import ../hackage/anticiv-0.1.0.5-r1-ccb726679b63e02f5b09059b0f6a1321579c9506228a370889bc18503da54d64.nix;
        revNum = 1;
        sha256 = "ccb726679b63e02f5b09059b0f6a1321579c9506228a370889bc18503da54d64";
        };
      default = "r1";
      };
    };
  }