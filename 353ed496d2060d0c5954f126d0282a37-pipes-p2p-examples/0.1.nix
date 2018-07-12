{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-p2p-examples";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/pipes-p2p-examples";
        url = "";
        synopsis = "Examples using pipes-p2p";
        description = "For now this package includes a dummy P2P network where nodes just exchange\ntheir network addresses. This can be used as boilerplate code for other P2P\nnetworks. Future releases may contain more examples.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "address-exchanger" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.network
              hsPkgs.errors
              hsPkgs.network-simple-sockaddr
              hsPkgs.pipes
              hsPkgs.pipes-network
              hsPkgs.pipes-p2p
            ];
          };
        };
      };
    }