{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "aivika-transformers";
          version = "4.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009-2016. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com/en/products/aivika.html";
        url = "";
        synopsis = "Transformers for the Aivika simulation library";
        description = "This package is a generalization of the aivika [1] simulation library\nwith extensive use of monad transformers and type families.\n\n\\[1] <http://hackage.haskell.org/package/aivika>\n";
        buildType = "Simple";
      };
      components = {
        "aivika-transformers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.vector
            hsPkgs.aivika
          ];
        };
      };
    }