{
  "0.1.0" = {
    sha256 = "209a10c1b09a05a9084f72081ef2d1eeacfbd05aadd660fcb2475ebba4e185da";
    revisions = {
      r0 = {
        nix = import ../hackage/dozens-0.1.0-r0-55623e31f729408679e967d9196e02b7aea900e519c563087dc230104028baa2.nix;
        revNum = 0;
        sha256 = "55623e31f729408679e967d9196e02b7aea900e519c563087dc230104028baa2";
        };
      r1 = {
        nix = import ../hackage/dozens-0.1.0-r1-e2588fc7c2142ae00ba5dd7546bc3e8cbd6ddd77de152ba332767e3b5417407e.nix;
        revNum = 1;
        sha256 = "e2588fc7c2142ae00ba5dd7546bc3e8cbd6ddd77de152ba332767e3b5417407e";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "7e16121b2ee5e4bbdda47c11d956828ed0e5646723ff2b6e469d3c950c6b7ac3";
    revisions = {
      r0 = {
        nix = import ../hackage/dozens-0.1.1-r0-acc025f4dfc74022798319cd1d3be5d6260fc33404c180b1a6cb99fe2aafe1a7.nix;
        revNum = 0;
        sha256 = "acc025f4dfc74022798319cd1d3be5d6260fc33404c180b1a6cb99fe2aafe1a7";
        };
      r1 = {
        nix = import ../hackage/dozens-0.1.1-r1-08e6297d7be6ec753261aa5cb8f265a6ba6c369f44d25f46f9784ae1d8a88e52.nix;
        revNum = 1;
        sha256 = "08e6297d7be6ec753261aa5cb8f265a6ba6c369f44d25f46f9784ae1d8a88e52";
        };
      default = "r1";
      };
    };
  }