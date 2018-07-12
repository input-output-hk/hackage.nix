{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "PermuteEffects";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "martijn@van.steenbergen.nl";
        author = "Martijn van Steenbergen";
        homepage = "https://github.com/MedeaMelana/PermuteEffects";
        url = "";
        synopsis = "Permutations of effectful computations";
        description = "";
        buildType = "Simple";
      };
      components = {
        "PermuteEffects" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }