{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "digamma";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bgamari@gmail.com";
        author = "Ben Gamari";
        homepage = "https://github.com/bgamari/digamma";
        url = "";
        synopsis = "A (deprecated) implementation of the digamma function";
        description = "/deprecated/ This package has been superceded by\n'Numeric.SpecFunctions.digamma' from the @math-functions@ package.";
        buildType = "Simple";
      };
      components = {
        "digamma" = {
          depends  = [
            hsPkgs.base
            hsPkgs.math-functions
          ];
        };
      };
    }