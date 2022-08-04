{
  "1.0" = {
    sha256 = "83d09dd723aea78934fcf7feb979606e1e8a5053a99fda34142d91781c6e1b34";
    revisions = {
      r0 = {
        nix = import ../hackage/AC-Terminal-1.0-r0-e4b41af1e95875f68fac4d6b7a61ccaec86ec8cc9d70939a1a7e59300bbb9301.nix;
        revNum = 0;
        sha256 = "e4b41af1e95875f68fac4d6b7a61ccaec86ec8cc9d70939a1a7e59300bbb9301";
        };
      r1 = {
        nix = import ../hackage/AC-Terminal-1.0-r1-553274b7246c99776a496db22fb6bf500cafdd5a45f754dd43b731067d962bc5.nix;
        revNum = 1;
        sha256 = "553274b7246c99776a496db22fb6bf500cafdd5a45f754dd43b731067d962bc5";
        };
      default = "r1";
      };
    };
  }