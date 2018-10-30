{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "game-of-life";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "http://github.com/marcusbuffett/game-of-life";
      url = "";
      synopsis = "Conway's Game of Life";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "game-of-life" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.hscurses)
            (hsPkgs.array)
            (hsPkgs.text)
          ];
        };
      };
    };
  }