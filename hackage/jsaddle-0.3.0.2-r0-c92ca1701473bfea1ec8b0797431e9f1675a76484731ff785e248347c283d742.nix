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
    flags = { gtk3 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "High level interface for webkit-javascriptcore";
      description = "This package provides an EDSL for calling JavaScript code using\nthe JavaScriptCore engine and low level Haskell bindings\nin the webkit-javascriptcore library <https://github.com/ghcjs/webkit-javascriptcore>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or (errorHandler.buildDepError "ghcjs-prim"))
            ]
          else [
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
              (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or (errorHandler.buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or (errorHandler.buildDepError "webkit-javascriptcore"))
              ]));
        buildable = true;
        };
      tests = {
        "test-tool" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) ([
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            ] ++ (if flags.gtk3
            then [
              (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
              (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
              (hsPkgs."webkitgtk3-javascriptcore" or (errorHandler.buildDepError "webkitgtk3-javascriptcore"))
              ]
            else [
              (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
              (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
              (hsPkgs."webkit-javascriptcore" or (errorHandler.buildDepError "webkit-javascriptcore"))
              ]));
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }