{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-realtime";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016-2017. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com";
        url = "";
        synopsis = "Soft real-time simulation module for the Aivika library";
        description = "This package allows running soft real-time simulations based on the aivika-transformers [1] library.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
        buildType = "Simple";
      };
      components = {
        "aivika-realtime" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.mwc-random
            hsPkgs.async
            hsPkgs.time
            hsPkgs.vector
            hsPkgs.aivika
            hsPkgs.aivika-transformers
          ];
        };
      };
    }