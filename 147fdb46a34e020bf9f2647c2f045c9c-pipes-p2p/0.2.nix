{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-p2p";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "j@dannynavarro.net";
        author = "Danny Navarro";
        homepage = "https://github.com/jdnavarro/pipes-p2p";
        url = "";
        synopsis = "P2P network nodes with pipes";
        description = "Toy library to facilitate the creation of custom P2P networks using `pipes`.";
        buildType = "Simple";
      };
      components = {
        pipes-p2p = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.errors
            hsPkgs.exceptions
            hsPkgs.pipes
            hsPkgs.pipes-concurrency
            hsPkgs.pipes-network
            hsPkgs.network
            hsPkgs.network-simple-sockaddr
          ];
        };
      };
    }