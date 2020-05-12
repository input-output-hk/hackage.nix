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
      jsffi = true;
      webkit = false;
      jsc = false;
      gtk3 = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-dom"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@googlemail.com>";
      author = "Hamish Mackenzie";
      homepage = "";
      url = "";
      synopsis = "DOM library that supports both GHCJS and WebKitGTK";
      description = "Documentent Object Model (DOM) functions that work with\nGHCJS, but can also be used with GHC and WebKitGTK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.ghcjs) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ (pkgs.lib).optional (flags.ghcjs && flags.jsffi) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"))) ++ (pkgs.lib).optionals (!flags.ghcjs || flags.webkit) ([
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
            ]
          else [
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            ]));
        buildable = true;
        };
      };
    }