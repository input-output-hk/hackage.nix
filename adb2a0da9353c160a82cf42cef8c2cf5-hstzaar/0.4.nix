{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hstzaar";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pedro Vasconcelos <pbv@ncc.up.pt>";
        author = "Pedro Vasconcelos <pbv@ncc.up.pt>";
        homepage = "http://www.ncc.up.pt/~pbv/stuff/hstzaar";
        url = "";
        synopsis = "A two player abstract strategy game.";
        description = "HsTZAAR is an implementation of TZAAR ((c) 2007 Kris Brum),\na two player abstract strategy game played on a hexagonal board.\nTZAAR is the the last game in the GIPF game series.\nThis program is based on the (retired) htzaar implementation\nby Tom Hawkins <tomahawkins@gmail.com>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hstzaar = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.containers
              hsPkgs.gtk
              hsPkgs.cairo
              hsPkgs.glade
              hsPkgs.random
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }