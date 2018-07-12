{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "io-manager";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mihai.maruseac@gmail.com";
        author = "Mihai Maruseac";
        homepage = "";
        url = "";
        synopsis = "Skeleton library around the IO monad.";
        description = "A skeleton library to help learners of Haskell\nconcentrate on the pure-functional aspect and\nlet the IO be handled by the library.";
        buildType = "Simple";
      };
      components = {
        "io-manager" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          "SimpleEchoExample" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.io-manager
            ];
          };
        };
      };
    }