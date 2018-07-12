{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "producer";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Eric Torreborre";
        maintainer = "etorreborre@yahoo.com";
        author = "Eric Torreborre";
        homepage = "https://github.com/etorreborre/producer-hs#readme";
        url = "";
        synopsis = "Simple streaming datatype";
        description = "Producer is a simple streaming datatype, making that only a limited number\nof elements are ever kept in memory. As such it is more a library showing the use of\nsimple functional programming to do streaming rather than a production library.";
        buildType = "Simple";
      };
      components = {
        "producer" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "producer-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.producer
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.tasty-auto
              hsPkgs.checkers
            ];
          };
        };
      };
    }