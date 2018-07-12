{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "distribution";
          version = "1.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2014 Romain Edelmann";
        maintainer = "romain.edelmann@gmail.com";
        author = "Romain Edelmann";
        homepage = "https://github.com/redelmann/haskell-distribution";
        url = "";
        synopsis = "Finite discrete probability distributions.";
        description = "Package for manipulating finite discrete probability distributions. Supports transformations, measurements, efficient sampling and plotting.";
        buildType = "Simple";
      };
      components = {
        "distribution" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.MonadRandom
            hsPkgs.random
          ];
        };
      };
    }