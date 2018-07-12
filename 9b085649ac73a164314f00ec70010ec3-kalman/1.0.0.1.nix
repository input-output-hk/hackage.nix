{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kalman";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "Dominic Steinitz, Jacob West";
        maintainer = "dominic@steinitz.org";
        author = "Dominic Steinitz, Jacob West";
        homepage = "https://github.com/idontgetoutmuch/Kalman";
        url = "";
        synopsis = "Kalman and particle filters and smoothers";
        description = "Linear, extended and unscented Kalman filters are provided, along\nwith their corresponding smoothers. Furthermore, a particle filter\nand smoother is provided.";
        buildType = "Simple";
      };
      components = {
        "kalman" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hmatrix
            hsPkgs.random-fu
            hsPkgs.random-fu-multivariate
            hsPkgs.vector
          ];
        };
        tests = {
          "kalman-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.kalman
              hsPkgs.hmatrix
              hsPkgs.random-fu
              hsPkgs.random-fu-multivariate
              hsPkgs.Chart
              hsPkgs.Chart-cairo
              hsPkgs.Chart-diagrams
            ];
          };
        };
      };
    }