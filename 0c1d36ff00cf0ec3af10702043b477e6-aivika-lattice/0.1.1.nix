{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-lattice";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com/en/products/aivika.html";
        url = "";
        synopsis = "Nested discrete event simulation module for the Aivika library using lattice";
        description = "This experimental package extends the aivika-transformers [1] library with facilities for\nrunning nested discrete event simulations within lattice nodes.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
        buildType = "Simple";
      };
      components = {
        aivika-lattice = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.aivika
            hsPkgs.aivika-transformers
          ];
        };
      };
    }