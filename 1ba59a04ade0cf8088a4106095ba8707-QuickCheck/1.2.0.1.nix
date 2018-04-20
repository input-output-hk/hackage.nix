{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base3 = true;
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "QuickCheck";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "Koen Classen and John Hughes";
        homepage = "http://www.math.chalmers.se/~rjmh/QuickCheck/";
        url = "";
        synopsis = "Automatic testing of Haskell programs";
        description = "A library for testing Haskell programs automatically.\nThe programmer provides a specification of the program, in\nthe form of properties which functions should satisfy, and\nQuickCheck then tests that the properties hold in a large number\nof randomly generated cases.  Specifications are expressed in\nHaskell, using combinators defined in the QuickCheck library.\nQuickCheck provides combinators to define properties, observe\nthe distribution of test data, and define test\ndata generators.";
        buildType = "Simple";
      };
      components = {
        QuickCheck = {
          depends  = if _flags.base3
            then [
              hsPkgs.base
              hsPkgs.random
            ]
            else if _flags.base4
              then [
                hsPkgs.base
                hsPkgs.random
              ]
              else [ hsPkgs.base ];
        };
      };
    }