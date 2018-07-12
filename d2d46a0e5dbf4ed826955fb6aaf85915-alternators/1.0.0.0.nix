{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "alternators";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Louis Pan";
        maintainer = "louis@pan.me";
        author = "Louis Pan";
        homepage = "https://github.com/louispan/alternators#readme";
        url = "";
        synopsis = "Handy functions when using transformers.";
        description = "Useful monads built on top of transformers. Please see README.md";
        buildType = "Simple";
      };
      components = {
        "alternators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mmorph
            hsPkgs.mtl
            hsPkgs.stm
            hsPkgs.newtype-generics
            hsPkgs.transformers
            hsPkgs.lens
          ];
        };
      };
    }