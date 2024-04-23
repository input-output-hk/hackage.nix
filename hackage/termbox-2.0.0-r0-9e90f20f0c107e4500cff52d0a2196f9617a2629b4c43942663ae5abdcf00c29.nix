{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "termbox"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2023 Mitchell Rosen, Travis Staton";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/termbox/termbox-haskell";
      url = "";
      synopsis = "termbox";
      description = "This package provides a high-level wrapper around @termbox@, a simple C\nlibrary for writing text-based user interfaces: <https://github.com/termbox/termbox>\n\nSee also the higher-level interfaces:\n\n* @<https://hackage.haskell.org/package/termbox-banana termbox-banana>@, a @reactive-banana@ FRP interface.\n* @<https://hackage.haskell.org/package/termbox-tea termbox-tea>@, an Elm Architecture interface.\n\nAnd the lower-level interfaces:\n\n* @<https://hackage.haskell.org/package/termbox-bindings-hs termbox-bindings-hs>@, direct Haskell-flavored bindings.\n* @<https://hackage.haskell.org/package/termbox-bindings-c termbox-bindings-c>@, direct C-flavored bindings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."termbox-bindings-hs" or (errorHandler.buildDepError "termbox-bindings-hs"))
        ];
        buildable = true;
      };
    };
  }