{
  "0.1.0.0" = {
    sha256 = "cca48148e7f59cb6ab183cf90c2413ae8530643a81cf5c3d1861309f0590ee51";
    revisions = {
      r0 = {
        nix = import ../hackage/altsvc-0.1.0.0-r0-ce66f78151ff58fdb8a8f029129882c2db188d1b725a03aff1fc4530a9e0c4d0.nix;
        revNum = 0;
        sha256 = "ce66f78151ff58fdb8a8f029129882c2db188d1b725a03aff1fc4530a9e0c4d0";
      };
      r1 = {
        nix = import ../hackage/altsvc-0.1.0.0-r1-ce790eccd771d234b305e04db029953e4c9b2767e74f8d5ae31a0bb53e5b48d1.nix;
        revNum = 1;
        sha256 = "ce790eccd771d234b305e04db029953e4c9b2767e74f8d5ae31a0bb53e5b48d1";
      };
      default = "r1";
    };
  };
}