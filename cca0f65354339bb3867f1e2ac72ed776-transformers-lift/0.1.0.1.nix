{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "transformers-lift";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Vladislav Zavialov <vlad.z.4096@gmail.com>";
        author = "Vladislav Zavialov";
        homepage = "";
        url = "";
        synopsis = "Ad-hoc type classes for lifting";
        description = "This simple and lightweight library provides type classes\nfor lifting monad transformer operations.";
        buildType = "Simple";
      };
      components = {
        "transformers-lift" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
      };
    }