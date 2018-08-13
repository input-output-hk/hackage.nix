{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "deterministic-game-engine";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tydotg@gmail.com";
      author = "Tyler Olson";
      homepage = "https://github.com/TGOlson/deterministic-game-engine";
      url = "";
      synopsis = "Simple deterministic game engine";
      description = "Game engine for creating deterministic games.";
      buildType = "Simple";
    };
    components = {
      "deterministic-game-engine" = {
        depends  = [ (hsPkgs.base) ];
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