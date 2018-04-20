{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Dust-tools-pcap";
          version = "1.3.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "brandon@ischool.utexas.edu";
        author = "Brandon Wiley";
        homepage = "";
        url = "";
        synopsis = "Network filtering exploration tools that rely on pcap";
        description = "A set of tools for exploring network filtering";
        buildType = "Simple";
      };
      components = {
        exes = {
          replay-convert = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust-crypto
              hsPkgs.Dust
              hsPkgs.Dust-tools
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
              hsPkgs.pcap
            ];
          };
          shaper-update = {
            depends  = [
              hsPkgs.base
              hsPkgs.Dust
              hsPkgs.bytestring
              hsPkgs.entropy
              hsPkgs.network
              hsPkgs.cereal
              hsPkgs.ghc-prim
              hsPkgs.binary
              hsPkgs.random
              hsPkgs.random-extras
              hsPkgs.random-source
              hsPkgs.random-fu
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.split
              hsPkgs.pcap
              hsPkgs.csv
            ];
          };
        };
      };
    }