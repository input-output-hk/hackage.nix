{
  "0.1.0.0" = {
    sha256 = "9980c658db092818efa516d29a264f0a963669e7110c4a2a69e9f63b301497bf";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-debug-stub-0.1.0.0-r0-fb43b605332b8ac8b56ef92063d004a65eac05923ae1537fff92462f711a02b5.nix;
        revNum = 0;
        sha256 = "fb43b605332b8ac8b56ef92063d004a65eac05923ae1537fff92462f711a02b5";
        };
      default = "r0";
      };
    };
  "0.2.0.0" = {
    sha256 = "019cc9e7ac1d01c4aa7721337d205c762e75ccce30821d24c5a9a9c6254223fe";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-debug-stub-0.2.0.0-r0-91edce9c65e590ba063b5d19c6dee223b465a5aa36a929867700aceaad7f0222.nix;
        revNum = 0;
        sha256 = "91edce9c65e590ba063b5d19c6dee223b465a5aa36a929867700aceaad7f0222";
        };
      r1 = {
        nix = import ../hackage/ghc-debug-stub-0.2.0.0-r1-cd5048299b29c92aac12546d9a72500289219d3a6d8b0b3282acc32786833647.nix;
        revNum = 1;
        sha256 = "cd5048299b29c92aac12546d9a72500289219d3a6d8b0b3282acc32786833647";
        };
      default = "r1";
      };
    };
  "0.2.1.0" = {
    sha256 = "41087bc86f843fdd99fbbf29a40a53b2dc45f7e15caef1d7b197475353a555f2";
    revisions = {
      r0 = {
        nix = import ../hackage/ghc-debug-stub-0.2.1.0-r0-edea50c04f41cb5ca39af6be2313c9c8c933c1367b496e45e07e04802cd58d1a.nix;
        revNum = 0;
        sha256 = "edea50c04f41cb5ca39af6be2313c9c8c933c1367b496e45e07e04802cd58d1a";
        };
      default = "r0";
      };
    };
  }