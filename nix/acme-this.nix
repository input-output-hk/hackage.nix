{
  "0.1.0.0" = {
    sha256 = "65225cd2dd8cd87acf02af0e345918be35264160341f69ab31a026825c96f59b";
    revisions = {
      r0 = {
        nix = import ../hackage/acme-this-0.1.0.0-r0-c3d8a6d4035e74350ce9722911cb0ad07cae8993f68f67df922b01595f588fc3.nix;
        revNum = 0;
        sha256 = "c3d8a6d4035e74350ce9722911cb0ad07cae8993f68f67df922b01595f588fc3";
        };
      r1 = {
        nix = import ../hackage/acme-this-0.1.0.0-r1-58d6b008362c3178d58da18d0935f8aa966d03053d4d6abd9ab343efd3af3ff6.nix;
        revNum = 1;
        sha256 = "58d6b008362c3178d58da18d0935f8aa966d03053d4d6abd9ab343efd3af3ff6";
        };
      default = "r1";
      };
    };
  }