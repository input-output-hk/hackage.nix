{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Dist";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "will.yager@gmail.com";
        author = "William Yager";
        homepage = "https://github.com/wyager/Dist";
        url = "";
        synopsis = "A Haskell library for probability distributions";
        description = "This library provides a data structure and associated functions for representing discrete probability distributions.";
        buildType = "Simple";
      };
      components = {
        Dist = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadRandom
            hsPkgs.containers
          ];
        };
        tests = {
          Test = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.containers
            ];
          };
        };
      };
    }