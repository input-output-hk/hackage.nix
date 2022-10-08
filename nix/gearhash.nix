{
  "1.0.0" = {
    sha256 = "bc2770137f887b5ebd115f6ccb006370a35e086b5894f3e07d07c3602fa29eb3";
    revisions = {
      r0 = {
        nix = import ../hackage/gearhash-1.0.0-r0-7e5f6109ffe4d78e3f2beb930f880b7fb63f89355e205158de10fdf986f38847.nix;
        revNum = 0;
        sha256 = "7e5f6109ffe4d78e3f2beb930f880b7fb63f89355e205158de10fdf986f38847";
        };
      r1 = {
        nix = import ../hackage/gearhash-1.0.0-r1-37536c4d2b362f95ddad3a2cbc55bd3e4864433ea2f84d3fa676520817720cbc.nix;
        revNum = 1;
        sha256 = "37536c4d2b362f95ddad3a2cbc55bd3e4864433ea2f84d3fa676520817720cbc";
        };
      default = "r1";
      };
    };
  }