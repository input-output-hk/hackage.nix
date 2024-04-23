{
  "0.1" = {
    sha256 = "16614247633c9c131cd225105e0970d7676502ed568b84bad72d88c107943605";
    revisions = {
      r0 = {
        nix = import ../hackage/template-haskell-optics-0.1-r0-0021ff0c8788db4eead5fcef319351fc1355ea533c037d65579ee4da86ef4459.nix;
        revNum = 0;
        sha256 = "0021ff0c8788db4eead5fcef319351fc1355ea533c037d65579ee4da86ef4459";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "b5926b51ef5649337ebb4a2cd262d6c5ae441d0ced197996a23a472f1af3528e";
    revisions = {
      r0 = {
        nix = import ../hackage/template-haskell-optics-0.2-r0-716380daa3ad28a102b4ce9faec2d94a6c4b5f4c5a99e4fdbea9a824871cba80.nix;
        revNum = 0;
        sha256 = "716380daa3ad28a102b4ce9faec2d94a6c4b5f4c5a99e4fdbea9a824871cba80";
      };
      r1 = {
        nix = import ../hackage/template-haskell-optics-0.2-r1-261bc287575bceaa2575c226e8092c0d249765732c42709897fb613eb3bd58ab.nix;
        revNum = 1;
        sha256 = "261bc287575bceaa2575c226e8092c0d249765732c42709897fb613eb3bd58ab";
      };
      default = "r1";
    };
  };
  "0.3" = {
    sha256 = "ff295431b5843c0d994773125e83540719b0f133b88441598fd715a18307e1bf";
    revisions = {
      r0 = {
        nix = import ../hackage/template-haskell-optics-0.3-r0-91648822d89fc7acdc038bd57b3f59714ded6b54bbb964c0dcb8ca7404507b7d.nix;
        revNum = 0;
        sha256 = "91648822d89fc7acdc038bd57b3f59714ded6b54bbb964c0dcb8ca7404507b7d";
      };
      default = "r0";
    };
  };
}