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
    flags = {
      ghcjs = true;
      gtk3 = true;
      jsffi = true;
      webkit = false;
      jmacro = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "jsaddle"; version = "0.1.1.6"; };
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
        depends = (([
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) (if flags.gtk3
          then [
            (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
            (hsPkgs."webkitgtk3-javascriptcore" or (errorHandler.buildDepError "webkitgtk3-javascriptcore"))
            ]
          else [
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            (hsPkgs."webkit-javascriptcore" or (errorHandler.buildDepError "webkit-javascriptcore"))
            ])) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"));
        buildable = true;
        };
      tests = {
        "test-tool" = {
          depends = (([
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
            ] ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) ([
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
              ]))) ++ (pkgs.lib).optional (flags.jmacro) (hsPkgs."jmacro" or (errorHandler.buildDepError "jmacro"));
          buildable = if flags.jsffi then false else true;
          };
        };
      };
    }