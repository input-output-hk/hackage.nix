{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      exe = true;
      vty = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "h2048";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 Javran Cheng";
        maintainer = "Javran.C@gmail.com";
        author = "Javran Cheng";
        homepage = "https://github.com/Javran/h2048";
        url = "";
        synopsis = "a haskell implementation of Game 2048";
        description = "a haskell implementation of Game 2048,\nbased on <https://github.com/gabrielecirulli/2048>.";
        buildType = "Simple";
      };
      components = {
        "h2048" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.MonadRandom
          ];
        };
        exes = {
          "h2048-simple" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.MonadRandom
            ];
          };
          "h2048-vty" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.vty
              hsPkgs.vty-ui
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.MonadRandom
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.HUnit
            ];
          };
        };
      };
    }