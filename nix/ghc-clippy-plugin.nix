{
  "0.0.0.1" = {
    sha256 = "a616ff8a68162375fa39107664d0c8dd6a5e84ccffa881da202cde25404ba40d";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-clippy-plugin-0.0.0.1-r0-fc29c21ac038f87a03dda108dd3b4ad4082b375f846bed6a5d7f593e810b6ebc.nix;
        revNum = 0;
        sha256 = "fc29c21ac038f87a03dda108dd3b4ad4082b375f846bed6a5d7f593e810b6ebc";
        };
      r1 = {
        nix = import ../hackage/ghc-clippy-plugin-0.0.0.1-r1-0fa94f5302356b685c23486c4fbe2a1741f1bed470718b7a432b4e21ddb10d9f.nix;
        revNum = 1;
        sha256 = "0fa94f5302356b685c23486c4fbe2a1741f1bed470718b7a432b4e21ddb10d9f";
        };
      default = "r1";
      };
    };
  }