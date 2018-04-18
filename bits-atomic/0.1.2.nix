{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bits-atomic";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gabriel Wicke <wicke@wikidev.net>";
        author = "Gabriel Wicke <wicke@wikidev.net>";
        homepage = "";
        url = "";
        synopsis = "Atomic bit operations on memory locations\nfor low-level synchronization";
        description = "Atomic operations including CAS (compare-and-swap), lock and fetch & add\nsuitable for low-level shared-memory synchronization.\n\nThe implementation is using GCC's builtin atomic operations in C wrappers\ncalled through the FFI.\n\n/Testing:/ The following commands can be used to compile and run the test suite:\n\n> cabal unpack bits-atomic && cd bits-atomic-* # if not yet locally available\n> cabal configure -ftest\n> cabal build\n> cabal test\n\n/Recent changes/:\n\n* 0.1.2: Avoid using System.FilePath in Setup.hs to fix build failure on hackage";
        buildType = "Custom";
      };
      components = {
        bits-atomic = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          test = {
            depends  = optionals _flags.test [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework
            ];
          };
        };
      };
    }