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
      identifier = { name = "termbox"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2022, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/termbox/termbox-haskell";
      url = "";
      synopsis = "termbox";
      description = "This package provides a high-level wrapper around @termbox@, a simple C\nlibrary for writing text-based user interfaces: <https://github.com/termbox/termbox>\n\nSee also:\n\n* @<https://hackage.haskell.org/package/termbox-banana termbox-banana>@ for a @reactive-banana@ FRP interface.\n* @<https://hackage.haskell.org/package/termbox-tea termbox-tea>@ for an Elm Architecture interface.\n* @<https://hackage.haskell.org/package/termbox-bindings-hs termbox-bindings-hs>@ for lower-level bindings.\n* @<https://hackage.haskell.org/package/termbox-bindings-c termbox-bindings-c>@ for even lower-level bindings.";
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