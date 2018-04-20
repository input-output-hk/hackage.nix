{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TicTacToe";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tony Morris";
        author = "Tony Morris <tmorris@tmorris.net>";
        homepage = "";
        url = "";
        synopsis = "A sub-project (exercise) for a functional programming course";
        description = "A sub-project (exercise) for a functional programming course";
        buildType = "Simple";
      };
      components = {
        TicTacToe = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.HUnit
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ];
        };
      };
    }