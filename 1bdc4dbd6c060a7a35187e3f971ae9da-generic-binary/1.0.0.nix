{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "generic-binary";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@fvisser.nl";
        author = "Sebastiaan Visser";
        homepage = "";
        url = "";
        synopsis = "Generic Data.Binary derivation using GHC generics.";
        description = "Generic Data.Binary derivation using GHC generics.";
        buildType = "Simple";
      };
      components = {
        "generic-binary" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
            hsPkgs.binary
          ];
        };
      };
    }