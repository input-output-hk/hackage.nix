{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unicode-show";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Takayuki Muranushi";
        maintainer = "muranushi@gmail.com";
        author = "Takayuki Muranushi";
        homepage = "http://github.com/nushio3/unicode-show#readme";
        url = "";
        synopsis = "print and show in unicode";
        description = "This package provides variants of 'show' and 'print' functions that does not escape non-ascii characters.\n\nSee <http://github.com/nushio3/unicode-show#readme README> for usage.\n\nRun ghci with  @-interactive-print@ flag to print unicode characters. See <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/interactive-evaluation.html#ghci-interactive-print Using a custom interactive printing function> section in the GHC manual.";
        buildType = "Simple";
      };
      components = {
        "unicode-show" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "unicode-show-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.unicode-show
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }