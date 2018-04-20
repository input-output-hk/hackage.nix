{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "persist2er";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "felipe.garay@usach.cl";
        author = "Felipe Garay";
        homepage = "";
        url = "";
        synopsis = "Transforms persist's quasi-quoted syntax into ER format";
        description = "This is a simple program to transform persist's\nquasi-quoted syntax, like the used in yesod, into ER format.\nYou can use the <https://hackage.haskell.org/package/erd erd>\nto generate a diagram from this representation.";
        buildType = "Simple";
      };
      components = {
        exes = {
          persist2er = {
            depends  = [
              hsPkgs.base
              hsPkgs.persistent
              hsPkgs.text
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }