{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "aivika-distributed";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015-2016. David Sorokin <david.sorokin@gmail.com>";
        maintainer = "David Sorokin <david.sorokin@gmail.com>";
        author = "David Sorokin";
        homepage = "http://www.aivikasoft.com/en/products/aivika.html";
        url = "";
        synopsis = "Parallel distributed discrete event simulation module for the Aivika library";
        description = "This package extends the aivika-transformers [1] package with facilities for running parallel distributed simulations.\nIt uses an optimistic strategy known as the Time Warp method.\n\n\\[1] <http://hackage.haskell.org/package/aivika-transformers>\n";
        buildType = "Simple";
      };
      components = {
        aivika-distributed = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.random
            hsPkgs.binary
            hsPkgs.time
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.distributed-process
            hsPkgs.aivika
            hsPkgs.aivika-transformers
          ];
        };
      };
    }