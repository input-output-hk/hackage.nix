{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "labyrinth";
        version = "0.1.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "koterpillar@gmail.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/labyrinth";
      url = "";
      synopsis = "A complicated turn-based game";
      description = "Players take turns in a labyrinth, competing with each\nother to pick a treasure and carry it out. They only know\neveryone's moves and responses, but do not see the map and\nmust deduce it themselves.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "labyrinth-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.lens)
            (hsPkgs.acid-state)
            (hsPkgs.happstack-server)
            (hsPkgs.derive)
            (hsPkgs.safecopy)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.MonadRandom)
            (hsPkgs.json)
            (hsPkgs.monad-loops)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.lens)
            (hsPkgs.acid-state)
            (hsPkgs.happstack-server)
            (hsPkgs.derive)
            (hsPkgs.safecopy)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.MonadRandom)
            (hsPkgs.json)
            (hsPkgs.monad-loops)
            (hsPkgs.HTF)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }