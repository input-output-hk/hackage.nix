{
  "0.1.0.0" = {
    sha256 = "67729c09a291fe4792119bb95a39a684bd7baf72965fcabf85fc041c64fbfd24";
    revisions = {
      r0 = {
        nix = import ../hackage/leb128-0.1.0.0-r0-5946cb58c7f0a8dd00838776f3e88d1d44dbba48d9c733c3844bba55f9fd453a.nix;
        revNum = 0;
        sha256 = "5946cb58c7f0a8dd00838776f3e88d1d44dbba48d9c733c3844bba55f9fd453a";
        };
      r1 = {
        nix = import ../hackage/leb128-0.1.0.0-r1-579ba3853c21f6994308dbea056490bd4d5fd0261d0a41a3653b6fd79c33760b.nix;
        revNum = 1;
        sha256 = "579ba3853c21f6994308dbea056490bd4d5fd0261d0a41a3653b6fd79c33760b";
        };
      r2 = {
        nix = import ../hackage/leb128-0.1.0.0-r2-f07e491e34bcac09bd816daefe1b9cfba163249a776b5c669821ebd0f7a5118b.nix;
        revNum = 2;
        sha256 = "f07e491e34bcac09bd816daefe1b9cfba163249a776b5c669821ebd0f7a5118b";
        };
      default = "r2";
      };
    };
  }