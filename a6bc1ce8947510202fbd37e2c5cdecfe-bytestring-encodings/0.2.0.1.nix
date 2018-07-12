{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bytestring-encodings";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "chessai (c) 2018";
        maintainer = "chessai1996@gmail.com";
        author = "chessai";
        homepage = "";
        url = "";
        synopsis = "checks to see if a given bytestring adheres to a certain encoding";
        description = "This module provides a family of functions, 'isX', of type @'ByteString' -> 'Bool'@,\nwhich return 'True' if the input ByteString adheres to a certain encoding X,\nand 'False' otherwise.";
        buildType = "Simple";
      };
      components = {
        "bytestring-encodings" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-encodings
              hsPkgs.hedgehog
            ];
          };
        };
        benchmarks = {
          "microbenchmark" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-encodings
              hsPkgs.gauge
              hsPkgs.text
            ];
          };
        };
      };
    }