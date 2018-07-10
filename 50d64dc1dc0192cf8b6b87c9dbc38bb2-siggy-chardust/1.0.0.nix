{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "siggy-chardust";
          version = "1.0.0";
        };
        license = "MPL-2.0";
        copyright = "© 2017-2018 Phil de Joux, © 2017-2018 Block Scope Limited";
        maintainer = "phil.dejoux@blockscope.com";
        author = "Phil de Joux";
        homepage = "https://github.com/blockscope/flare-timing/tree/master/siggy-chardust#readme";
        url = "";
        synopsis = "Rounding rationals to significant digits and decimal places.";
        description = "The round function from the prelude returns an integer. The standard librarys of C and C++ have round functions that return floating point numbers. Rounding in this library takes and returns rationals and can round to a number of significant digits or a number of decimal places.";
        buildType = "Simple";
      };
      components = {
        siggy-chardust = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          digits = {
            depends  = [
              hsPkgs.base
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }