{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Haskelloids";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mrehayden@googlemail.com";
        author = "Matthew Hayden";
        homepage = "http://www.matthewhayden.co.uk";
        url = "";
        synopsis = "A reproduction of the Atari 1979 classic \"Asteroids\"";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          Haskelloids = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.MonadRandom
              hsPkgs.hmatrix
              hsPkgs.HGL
              hsPkgs.Yampa
            ];
          };
        };
      };
    }