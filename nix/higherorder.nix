{
  "0.0" = {
    sha256 = "5fc7ed69f3b128fee776837270358f77c82693bf951b9e36d1d75325d3849819";
    revisions = {
      r0 = {
        nix = import ../hackage/higherorder-0.0-r0-6dcf02ec7cea24b051018774a834945ad0194e696b1ed6c8acf03206af78dd9b.nix;
        revNum = 0;
        sha256 = "6dcf02ec7cea24b051018774a834945ad0194e696b1ed6c8acf03206af78dd9b";
      };
      r1 = {
        nix = import ../hackage/higherorder-0.0-r1-c587250ea9c4828876f3837e82e5b1543e0dc2cc59bb4ec59ce0d947bae3d459.nix;
        revNum = 1;
        sha256 = "c587250ea9c4828876f3837e82e5b1543e0dc2cc59bb4ec59ce0d947bae3d459";
      };
      default = "r1";
    };
  };
}