{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "learn-physics";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Scott N. Walck <walck@lvc.edu>";
        author = "Scott N. Walck";
        homepage = "";
        url = "";
        synopsis = "Haskell code for learning physics";
        description = "A library of functions for vector calculus,\ncalculation of electric field, electric flux,\nmagnetic field, and other quantities in mechanics\nand electromagnetic theory.";
        buildType = "Simple";
      };
      components = {
        learn-physics = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector-space
          ];
        };
      };
    }