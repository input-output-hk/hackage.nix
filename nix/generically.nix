{
  "0.1" = {
    sha256 = "d5b72880e1d00b24b6c221978d060bea620acc412cdcb62521f3016cbd3f2b71";
    revisions = {
      r0 = {
        nix = import ../hackage/generically-0.1-r0-16d54a08bcdf708395c2200a28ffcba55e90479dc96ed617dbb94f0411f7a7af.nix;
        revNum = 0;
        sha256 = "16d54a08bcdf708395c2200a28ffcba55e90479dc96ed617dbb94f0411f7a7af";
        };
      default = "r0";
      };
    };
  "0.1.1" = {
    sha256 = "04c5a436bec4b041f71a733f56a1bd7f435f63dde8d3eb5c1f48d55b4dbc43cf";
    revisions = {
      r0 = {
        nix = import ../hackage/generically-0.1.1-r0-aa00d9a77b7fb90c08f935699758ed9de55975021b1e979c6a4a4b5b49a940a9.nix;
        revNum = 0;
        sha256 = "aa00d9a77b7fb90c08f935699758ed9de55975021b1e979c6a4a4b5b49a940a9";
        };
      r1 = {
        nix = import ../hackage/generically-0.1.1-r1-2b9b5efb6eea2fb65377565d53d85b0ccc5b37404fba4bef1d60277caa877e5e.nix;
        revNum = 1;
        sha256 = "2b9b5efb6eea2fb65377565d53d85b0ccc5b37404fba4bef1d60277caa877e5e";
        };
      r2 = {
        nix = import ../hackage/generically-0.1.1-r2-378ec049bc2853b8011df116647fbd34bb9f00edce9840e4957f98abc097597c.nix;
        revNum = 2;
        sha256 = "378ec049bc2853b8011df116647fbd34bb9f00edce9840e4957f98abc097597c";
        };
      default = "r2";
      };
    };
  }