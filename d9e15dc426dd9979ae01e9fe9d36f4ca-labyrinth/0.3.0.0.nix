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
      specVersion = "1.8";
      identifier = {
        name = "labyrinth";
        version = "0.3.0.0";
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
      "labyrinth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.lens)
          (hsPkgs.filepath)
          (hsPkgs.derive)
          (hsPkgs.safecopy)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.MonadRandom)
          (hsPkgs.monad-loops)
        ];
      };
      exes = {
        "labyrinth-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.lens)
            (hsPkgs.filepath)
            (hsPkgs.derive)
            (hsPkgs.safecopy)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.MonadRandom)
            (hsPkgs.monad-loops)
            (hsPkgs.acid-state)
            (hsPkgs.yesod)
            (hsPkgs.yesod-static)
            (hsPkgs.websockets)
            (hsPkgs.wai-websockets)
            (hsPkgs.warp)
            (hsPkgs.utf8-string)
            (hsPkgs.aeson)
            (hsPkgs.shakespeare-css)
            (hsPkgs.shakespeare-js)
            (hsPkgs.hamlet)
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
            (hsPkgs.filepath)
            (hsPkgs.derive)
            (hsPkgs.safecopy)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.MonadRandom)
            (hsPkgs.monad-loops)
            (hsPkgs.HTF)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }