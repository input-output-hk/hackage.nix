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
    flags = { old-webkit = false; gtk3 = true; };
    package = {
      specVersion = "1.22";
      identifier = { name = "ghcjs-dom-webkit"; version = "0.3.1.0"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
          ] ++ (if flags.gtk3
          then [
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."webkitgtk3" or (errorHandler.buildDepError "webkitgtk3"))
            ]
          else [
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            ]);
        buildable = true;
        };
      };
    }