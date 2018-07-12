{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "breakout";
          version = "0.0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "(c) 2009, Eyal Lotem";
        maintainer = "Eyal Lotem (eyal.lotem@gmail.com)";
        author = "Eyal Lotem";
        homepage = "http://github.com/Peaker/breakout/tree/master";
        url = "";
        synopsis = "A simple Breakout game implementation.";
        description = "A simple Breakout game implementation.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "breakout" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskgame
              hsPkgs.mtl
              hsPkgs.SDL
            ];
          };
        };
      };
    }