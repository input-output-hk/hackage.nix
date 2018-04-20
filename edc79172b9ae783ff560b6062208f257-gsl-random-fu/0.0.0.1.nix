{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gsl-random-fu";
          version = "0.0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "http://code.haskell.org/~mokus/gsl-random-fu";
        url = "";
        synopsis = "Instances for using gsl-random with random-fu";
        description = "Instances for using gsl-random's RNG type as a\nrandom-fu RandomSource.";
        buildType = "Simple";
      };
      components = {
        gsl-random-fu = {
          depends  = [
            hsPkgs.gsl-random
            hsPkgs.random-fu
            hsPkgs.base
          ];
        };
      };
    }