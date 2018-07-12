{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-lattice";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016-2017. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com";
        url = "";
        synopsis = "Nested discrete event simulation module for the Aivika library using lattice";
        description = "This experimental package extends the aivika-transformers [1] library and allows\nrunning nested discrete event simulations within lattice nodes, where\ntraversing the nodes of branching has a quadratic complexity.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
        buildType = "Simple";
      };
      components = {
        "aivika-lattice" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.mwc-random
            hsPkgs.aivika
            hsPkgs.aivika-transformers
          ];
        };
      };
    }