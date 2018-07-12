{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unit-constraint";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Extremely simple typeclass";
        description = "";
        buildType = "Simple";
      };
      components = {
        "unit-constraint" = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
          ];
        };
      };
    }