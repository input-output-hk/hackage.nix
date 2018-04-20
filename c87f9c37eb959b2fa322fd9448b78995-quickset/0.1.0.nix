{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickset";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Very fast and memory-compact query-only set and map structures";
        description = "Very fast and memory-compact query-only set and map structures.";
        buildType = "Simple";
      };
      components = {
        quickset = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.vector-algorithms
          ];
        };
      };
    }