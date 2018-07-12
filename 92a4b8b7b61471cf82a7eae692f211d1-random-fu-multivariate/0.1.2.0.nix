{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-fu-multivariate";
          version = "0.1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 FP Complete Corporation";
        maintainer = "dominic@steinitz.org";
        author = "Dominic Steinitz, Jacob West";
        homepage = "https://github.com/fpco/random-fu-multivariate";
        url = "";
        synopsis = "Multivariate distributions for random-fu";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "random-fu-multivariate" = {
          depends  = [
            hsPkgs.base
            hsPkgs.random-fu
            hsPkgs.hmatrix
            hsPkgs.mtl
          ];
        };
        tests = {
          "random-fu-multivariate-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.random-fu-multivariate
            ];
          };
        };
      };
    }