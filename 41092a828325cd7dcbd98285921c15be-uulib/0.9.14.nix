{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uulib";
          version = "0.9.14";
        };
        license = "BSD-3-Clause";
        copyright = "Universiteit Utrecht";
        maintainer = "S. Doaitse Swierstra";
        author = "";
        homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
        url = "";
        synopsis = "Haskell Utrecht Tools Library";
        description = "Fast Parser Combinators and Pretty Printing Combinators";
        buildType = "Simple";
      };
      components = {
        uulib = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }