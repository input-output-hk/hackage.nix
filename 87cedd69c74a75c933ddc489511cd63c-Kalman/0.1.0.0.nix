{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Kalman";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Dominic Steinitz";
        maintainer = "dominic@steinitz.org";
        author = "Dominic Steinitz";
        homepage = "https://github.com/idontgetoutmuch/Kalman";
        url = "";
        synopsis = "A slightly extended Kalman filter";
        description = "";
        buildType = "Simple";
      };
      components = {
        Kalman = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
          ];
        };
      };
    }