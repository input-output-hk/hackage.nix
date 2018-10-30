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
      specVersion = "1.8";
      identifier = {
        name = "labyrinth-server";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "a@koterpillar.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/labyrinth-server";
      url = "";
      synopsis = "A complicated turn-based game - Web server";
      description = "Players take turns in a labyrinth, competing with each\nother to pick a treasure and carry it out. They only know\neveryone's moves and responses, but do not see the map and\nmust deduce it themselves.\nThis package contains a Web server to play the game.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "labyrinth-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.labyrinth)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.lens)
            (hsPkgs.filepath)
            (hsPkgs.derive)
            (hsPkgs.safecopy)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vector)
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
    };
  }