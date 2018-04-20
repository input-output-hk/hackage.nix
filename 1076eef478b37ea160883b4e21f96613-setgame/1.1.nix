{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "setgame";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "emertens@gmail.com";
        author = "";
        homepage = "";
        url = "";
        synopsis = "A console interface to the game of Set";
        description = "A console interface to the game of Set";
        buildType = "Simple";
      };
      components = {
        setgame = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
            hsPkgs.vty
          ];
        };
        exes = {
          set-game = {
            depends  = [
              hsPkgs.setgame
              hsPkgs.base
            ];
          };
        };
      };
    }