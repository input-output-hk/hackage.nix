{
  "2.0" = {
    sha256 = "a01117d22964a26d98a8363575a2ac61821cd2266fff7f7c78cb453a80226708";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appflow-2.0-r0-a79f00cb1eb31b994fbe55562f69c46fcdf739a485051a1fb734561c2538a599.nix;
        revNum = 0;
        sha256 = "a79f00cb1eb31b994fbe55562f69c46fcdf739a485051a1fb734561c2538a599";
      };
      r1 = {
        nix = import ../hackage/amazonka-appflow-2.0-r1-1ea74a554c9b96878a800a97441df1dee2da424827e203eb8f7c4095d1e4dd5e.nix;
        revNum = 1;
        sha256 = "1ea74a554c9b96878a800a97441df1dee2da424827e203eb8f7c4095d1e4dd5e";
      };
      default = "r1";
    };
  };
}