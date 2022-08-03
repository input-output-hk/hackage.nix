{
  "0.1" = {
    sha256 = "7ecf056138a31a7cdc39198895dabd264f0e1a0ab0c2ef9ab92ac02f840dfccd";
    revisions = {
      r0 = {
        nix = import ../hackage/cabalgraph-0.1-r0-87ccde2fe64bc2afdc4766d9692190c53155543fcbe460791b08b4d6df6ba4f9.nix;
        revNum = 0;
        sha256 = "87ccde2fe64bc2afdc4766d9692190c53155543fcbe460791b08b4d6df6ba4f9";
        };
      r1 = {
        nix = import ../hackage/cabalgraph-0.1-r1-076a73583003898965a961d4d08a791c91d6dc379cb8a583b9f4cea44d707307.nix;
        revNum = 1;
        sha256 = "076a73583003898965a961d4d08a791c91d6dc379cb8a583b9f4cea44d707307";
        };
      default = "r1";
      };
    };
  }