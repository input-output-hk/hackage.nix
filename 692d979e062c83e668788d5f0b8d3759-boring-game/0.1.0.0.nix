{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "boring-game";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Truong Hoang Dung";
        maintainer = "checkraiser11@gmail.com";
        author = "Truong Hoang Dung";
        homepage = "https://github.com/checkraiser/boring-game#readme";
        url = "";
        synopsis = "An educational game";
        description = "Using Gloss to build game in Haskell";
        buildType = "Simple";
      };
      components = {
        boring-game = {
          depends  = [
            hsPkgs.base
            hsPkgs.gloss
          ];
        };
        exes = {
          boring-game-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.boring-game
              hsPkgs.gloss
            ];
          };
        };
        tests = {
          boring-game-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.boring-game
            ];
          };
        };
      };
    }