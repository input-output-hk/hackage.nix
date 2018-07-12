{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "imj-game-hamazed";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2017 - 2018 Olivier Sohn";
        maintainer = "olivier.sohn@gmail.com";
        author = "Olivier Sohn";
        homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-game-hamazed//README.md";
        url = "";
        synopsis = "A game with flying numbers and 8-bit color animations.";
        description = "In Hamazed, you are a 'BattleShip' pilot surrounded by flying 'Number's.\n\nYour mission is to shoot exactly the 'Number's whose sum will equate the\ncurrent 'Level' 's /target number/.\n\nThe higher the 'Level' (1..12), the more 'Number's are flying around (up-to 16).\nAnd the smaller the 'World' gets.\n\nGood luck !";
        buildType = "Simple";
      };
      components = {
        "imj-game-hamazed" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.matrix
            hsPkgs.mtl
            hsPkgs.terminal-size
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.imj-animation
            hsPkgs.imj-animation
            hsPkgs.imj-base
            hsPkgs.imj-prelude
          ];
        };
        exes = {
          "imj-game-hamazed-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.imj-game-hamazed
              hsPkgs.imj-prelude
            ];
          };
        };
        tests = {
          "imj-game-hamazed-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.imj-base
              hsPkgs.imj-game-hamazed
              hsPkgs.mtl
              hsPkgs.text
            ];
          };
        };
      };
    }