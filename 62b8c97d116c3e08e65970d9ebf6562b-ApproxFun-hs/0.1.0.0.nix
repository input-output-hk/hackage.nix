{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ApproxFun-hs";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dominic@steinitz.org";
        author = "Dominic Steinitz";
        homepage = "https://github.com/idontgetoutmuch/ApproxFun.hs";
        url = "";
        synopsis = "Function approximation";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ApproxFun-hs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
      };
    }