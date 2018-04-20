{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unicode-show";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Takayuki Muranushi";
        maintainer = "muranushi@gmail.com";
        author = "Takayuki Muranushi";
        homepage = "http://github.com/githubuser/unicode-show#readme";
        url = "";
        synopsis = "print and show in unicode";
        description = "This package provides variants of 'show' and 'print' functions that does not escape non-ascii characters. Run ghci with  __@-interactive-print@__ flag to prints unicode characters. See <https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/interactive-evaluation.html#ghci-interactive-print Using a custom interactive printing function> section in the GHC manual.";
        buildType = "Simple";
      };
      components = {
        unicode-show = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          unicode-show-test = {
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