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
        name = "deterministic-game-engine";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tydotg@gmail.com";
      author = "Tyler Olson";
      homepage = "https://github.com/TGOlson/deterministic-game-engine";
      url = "";
      synopsis = "Simple deterministic game engine";
      description = "Haskell library for creating simple deterministic games,\nsuch as tic-tac-toe. The engine requires a minimal set of\nactions related to the game, and then will run the game\nuntil a terminal state is reached.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.deterministic-game-engine)
          ];
        };
      };
    };
  }