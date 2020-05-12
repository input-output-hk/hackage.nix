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
      specVersion = "1.8";
      identifier = { name = "awesomium"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2012 Maksymilian Owsianny";
      maintainer = "Maksymilian.Owsianny+Awesomium@gmail.com";
      author = "Maksymilian Owsianny";
      homepage = "";
      url = "";
      synopsis = "High-level Awesomium bindings.";
      description = "Awesomium (<http://awesomium.com>) is a windowless\nport of Chromium/Webkit.\n\nYou can integrate it with your program, and write\nall of your UI with HTML\\/CSS\\/JS.\n\nIf you plan to integrate Awesomium with GLUT you\ncan also check out this package\n(<http://hackage.haskell.org/package/awesomium-glut>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."awesomium-raw" or (errorHandler.buildDepError "awesomium-raw"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      };
    }