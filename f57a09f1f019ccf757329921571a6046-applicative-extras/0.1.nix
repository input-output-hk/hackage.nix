{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "applicative-extras";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Tupil";
        maintainer = "Chris Eidhof <ce+hackage@tupil.com>";
        author = "Chris Eidhof <ce+hackage@tupil.com>";
        homepage = "";
        url = "";
        synopsis = "Instances for Applicative";
        description = "Some instances for Applicative and type-level composition.";
        buildType = "Simple";
      };
      components = {
        "applicative-extras" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
          ];
        };
      };
    }