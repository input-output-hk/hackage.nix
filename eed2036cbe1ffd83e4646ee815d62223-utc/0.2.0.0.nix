{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "utc";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) Lars Petersen 2014-2015";
        maintainer = "lars@nyantec.com";
        author = "Lars Petersen";
        homepage = "https://github.com/lpeterse/haskell-utc";
        url = "";
        synopsis = "A pragmatic time and date library.";
        description = "This library aims to supply you with common\ntypes and operations for working with time and date.\n\n* Parsing and rendering common formats like ISO8601 and RFC3339.\n\n* Modifying dates and times in a way that is easy to understand\nand not overengineered (srsly, who needs something else than the\nGregorian Calendar?)\n\n* A set of classes that provide interfaces for your own application\nspecific or maybe more efficient time and date types. Implement the\ninterfaces and get all the parsing and rendering functions for free!\n\nBug reports or (even better) tests are welcome.";
        buildType = "Simple";
      };
      components = {
        "utc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.clock
            hsPkgs.exceptions
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.clock
              hsPkgs.exceptions
              hsPkgs.Cabal
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }